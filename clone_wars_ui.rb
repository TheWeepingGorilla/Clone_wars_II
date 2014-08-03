require './lib/clone_war'

def linespace
  puts "\n"
end

def header
  system 'clear'
  puts "
▀▀█▀▀ █  █ █▀▀ 　 ▒█▀▀█ █   █▀▀█ █▀▀▄ █▀▀ 　 ▒█   █ █▀▀█ █▀▀█ █▀▀
▀▀█▀▀ █  █ █▀▀ 　 ▒█▀▀█ █   █▀▀█ █▀▀▄ █▀▀ 　 ▒█   █ █▀▀█ █▀▀█ █▀▀
▀▀█▀▀ █  █ █▀▀ 　 ▒█▀▀█ █   █▀▀█ █▀▀▄ █▀▀ 　 ▒█   █ █▀▀█ █▀▀█ █▀▀
▀▀█▀▀ █  █ █▀▀ 　 ▒█▀▀█ █   █▀▀█ █▀▀▄ █▀▀ 　 ▒█   █ █▀▀█ █▀▀█ █▀▀
▀▀█▀▀ █  █ █▀▀ 　 ▒█▀▀█ █   █▀▀█ █▀▀▄ █▀▀ 　 ▒█   █ █▀▀█ █▀▀█ █▀▀
▀▀█▀▀ █  █ █▀▀ 　 ▒█▀▀█ █   █▀▀█ █▀▀▄ █▀▀ 　 ▒█   █ █▀▀█ █▀▀█ █▀▀
 ▒█   █▀▀█ █▀▀ 　 ▒█    █   █  █ █  █ █▀▀ 　 ▒█ █ █ █▄▄█ █▄▄▀ ▀▀█
 ▒█   ▀  ▀ ▀▀▀ 　 ▒█▄▄█ ▀▀▀ ▀▀▀▀ ▀  ▀ ▀▀▀ 　 ▒█▄▀▄█ ▀  ▀ ▀ ▀▀ ▀▀▀

"
end

def rules
  puts "In the near future, celebrity clones will do battle."
  puts "The greater number in each battle will inflict greater harm."
  puts "Battles are fought between on type of clone per battle."
  puts "You will choose what type of clone to send."
  puts "If you run out of clones before the enemy does, you lose."
  puts "Also, your family is put to death. So try not to lose."
end

def list_clones
  puts "The enemy clone army has the following:"
  linespace
  puts "#{@comp_brads} Brads"
  puts "#{@comp_angelenas} Angelenas"
  puts "#{@comp_scarlets} Scarlets"
  puts "#{@comp_bills} Bills"
  linespace
  puts "Your clone army has the following:"
  linespace
  puts "#{@player_brads} Brads"
  puts "#{@player_angelenas} Angelenas"
  puts "#{@player_scarlets} Scarlets"
  puts "#{@player_bills} Bills"
  linespace
end

def player_attack
  linespace
  puts "What type of clone will you send into battle? [(B)rad,(A)ngelena,(S)carlet,B(i)ll]"
  linespace
  battler = gets.chomp.upcase
  if ( (battler == "B") && (@player_brads >= 1) )
    @comp_brads= @comp_brads - battle(@player_brads,@comp_brads)
    if @comp_brads < 0
      @comp_brads = 0
    end
    puts "#{@player_brads} of your Brads and #{@comp_brads} of their Brads are left."
  elsif ( (battler == "A") && (@player_angelenas >= 1) )
    @comp_angelenas = @comp_angelenas - battle(@player_angelenas,@comp_angelenas)
    if @comp_angelenas < 0
      @comp_angelenas = 0
    end
    puts "#{@player_angelenas} of your Angelenas and #{@comp_angelenas} of their Angelenas are left."
  elsif ( (battler == "S") && (@player_scarlets >= 1) )
    @comp_scarlets = @comp_scarlets - battle(@player_scarlets,@comp_scarlets)
    if @comp_scarlets < 0
      @comp_scarlets = 0
    end
    puts "#{@player_scarlets} of your Scarlets and #{@comp_scarlets} of their Scarlets are left."
  elsif ( (battler == "I") && (@player_bills >= 1) )
    @comp_bills = @comp_bills - battle(@player_bills,@comp_bills)
    if @comp_bills < 0
      @comp_bills = 0
    end
    puts "#{@player_bills} of your Bills and #{@comp_bills} of their Bills are left."
  else
    system 'clear'
    puts "Invalid! Try again"
  end
end

def computer_attack
  linespace
  puts "The enemy strikes back!"
  linespace
  choice = rand(1..4)
  if ( (choice = 1) && (@comp_brads >= 1) )
    @player_brads = @player_brads - battle(@comp_brads,@player_brads)
    if @player_brads < 0
      @player_brads = 0
    end
    puts "#{@player_brads} of your Brads and #{@comp_brads} of their Brads are left."
  elsif ( (choice = 2) && (@comp_angelenas >= 1) )
    @player_angelenas = @player_angelenas - battle(@comp_angelenas,@player_angelenas)
    if @player_angelenas < 0
      @player_angelenas = 0
    end
    puts "#{@player_angelenas} of your Angelenas and #{@comp_angelenas} of their Angelenas are left."
  elsif ( (choice = 3) && (@comp_scarlets >= 1) )
    @player_scarlets = @player_scarlets - battle(@comp_scarlets,@player_scarlets)
    if @player_scarlets < 0
      @player_scarlets = 0
    end
    puts "#{@player_scarlets} of your Scarlets and #{@comp_scarlets} of their Scarlets are left."
  elsif ( (choice = 4) && (@comp_bills >= 1) )
    @player_bills = @player_bills - battle(@comp_bills,@player_bills)
    if @player_bills < 0
      @player_bills = 0
    end
    puts "#{@player_bills} of your Bills and #{@comp_bills} of their Bills are left."
  end
end

def battle(attackers,defenders)
  attackers_roll = 0
  defenders_roll = 0
  attackers.times do
    attackers_roll += rand(1..6)
  end
  defenders.times do
    defenders_roll += rand(1..6)
  end
  if (attackers_roll > defenders_roll)
    return (attackers_roll - defenders_roll)
  else
    return 0
  end
end

def victory_check
  if ( (@comp_brads <= 0) && (@comp_angelenas <= 0) && (@comp_scarlets <= 0) && (@comp_bills <= 0) )
    puts "Congratulations! You won!"
    linespace
    exit
  elsif ( (@player_brads <= 0) && (@player_angelenas <= 0) && (@player_scarlets <= 0) && (@player_bills <= 0) )
    puts "You have lost. So, so sad."
    linespace
    exit
  else
    puts "The war continues."
  end
end

def main_menu
  loop do
    linespace
    puts "S > Send your clones into Battle!"
    puts "L > List all your clones by type."
    puts "R > Rules.  Show me the rules. "
    puts "X > Exit."
    linespace
    main_choice = gets.chomp.upcase
    if main_choice == "S"
      player_attack
      victory_check
      computer_attack
      victory_check
    elsif main_choice == "L"
      list_clones
    elsif main_choice == "R"
      rules
    elsif main_choice == "X"
      puts "Fine! But remember...you may be a clone too..."
      linespace
      exit
    else
      system 'clear'
      puts "Invalid! Try again"
    end
  end
end

def new_game
  @this_game = CloneWar.new
  @comp_brads = @this_game.number_of_clones(@this_game.computer_army,Brad)
  @comp_angelenas = @this_game.number_of_clones(@this_game.computer_army,Angelena)
  @comp_scarlets = @this_game.number_of_clones(@this_game.computer_army,Scarlet)
  @comp_bills = @this_game.number_of_clones(@this_game.computer_army,Bill)
  @player_brads = @this_game.number_of_clones(@this_game.player_army,Brad)
  @player_angelenas = @this_game.number_of_clones(@this_game.player_army,Angelena)
  @player_scarlets = @this_game.number_of_clones(@this_game.player_army,Scarlet)
  @player_bills = @this_game.number_of_clones(@this_game.player_army,Bill)
end

new_game
header
linespace
rules
main_menu
