/*
This is a comment block. It won't be read as an Ink story.
Comments are very useful for leaving ideas for story and functionalty

This exercise will demonstrate the following in the example video:
 - Basic Choices
 - Knot structure
 - Recurring choices
 - Conditionals in descriptions
 - Conditionals in choices
 
 In the assignment:
 - Add four more knots (and feel free to change any of the example text, this is YOUR story)
 - Add at least one more conditional
*/

-> cave_mouth

== cave_mouth ==
You are at the entrance to a cave. {not torch_pickup:There is a torch on the floor.} The cave extends to the east and west.
+ [Take the east tunnel] -> east_tunnel
+ [Take the west tunnel] -> west_tunnel
* {not torch_pickup} [Pick up the torch] -> torch_pickup

== east_tunnel ==
You are in the east. It is very dark; you can't see anything.
* {torch_pickup} [Light torch] -> east_tunnel_lit
+ [Go back] -> cave_mouth
-> END

== west_tunnel ==
You are in the west. There are three doors, facing north, south, and west. {hands_washed:You feel fresh and ready for adventure.}
* {big_mac_pickup} [Eat Big Mac] -> big_mac_eaten
+ [Go north] -> north_door
+ [Go south] -> south_door
+ [Go west] -> west_door
+ [Go east] -> cave_mouth
-> END

=== torch_pickup ===
You now have a torch. May it light the way.
* [Go back] -> cave_mouth
-> END

== east_tunnel_lit ==
The light of your torch glints off thousands of coins in the room.
* [Go back] -> cave_mouth
-> END

== north_door ==
You enter the north door, and are shocked to find yourself in a suburban McDonald's.
+ [Order a Big Mac] -> big_mac_pickup
+ [Go back] -> west_tunnel
-> END

== big_mac_pickup ==
You now have a Big Mac. You're not sure if you should be grateful or disappointed.
* [Go back] -> west_tunnel
-> END

==big_mac_eaten ==
You take a bite of the Big Mac. And another. And another. Though each bite removes a piece of the burger, it never seems to get smaller. You ponder the implications of the infinite Big Mac as you eat.
* [Get back to exploring] -> west_tunnel
-> END

== south_door ==
You enter the south door, but find only a public restroom. It's surprisingly clean.
* [Wash your hands] -> hands_washed
* [Go back] -> west_tunnel
-> END

== hands_washed ==
Even though you don't have to use the restroom, you take the time to wash your hands. You never know what kind of nasty stuff you might have brushed in that cave.
* [Go back] -> west_tunnel
-> END

== west_door ==
You enter the west door, only to find that there is no door at all. As a matter of fact, you're not entirely sure that there is a cave either.
* [Doubt your existence] -> existence_doubted
-> END

== existence_doubted ==
Who are you? Why did you start exploring this cave to begin with? Is this all a dream? Are you under the influence of psychotropic drugs, or perhaps anaesthesia? You can't seem to shake the feeling that your sole purpose in life is to explore this cave, and you're not sure how you should feel about that.
* [Become one with reality] -> west_tunnel