Simple game invented by me to explore object inheritance.

Creates two clone armies and allows player to choose which clone type (of 4) to send against the enemy.
Battles are random but favor the party with the greatest number.
Computer then strikes back randomly and play continues.

As it stands it's not a very interesting game, but it does illustrate object inheritance, attribute accessors,
and other Ruby OO topics.

Issues:

The battle code really should be in the clone war object, but I ran out of time to figure that out,
so I put it in the UI and just kept track of how many of each type were remaining in there.

There probably shouldn't be different clone objects, but just one type with different names and characteristics: 
but, I wanted to illustrate onject inheritance :-).  I fooled around quite a bit in this project
with different object behavior to get a feel for OO.  Most of this fooling about is not represented
in the code, just as a sandbox does not reflect the imaginations of the children who played there...

Originally the battle code was going to be much more sophisicated but again time constraints weighed in.  
This took me approximately 14 hours to do as is.  Definitely bit off too much here trying an original work.
   
