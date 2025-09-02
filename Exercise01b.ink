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
You are at the entrance to a cave. {not torch_pickup: There is a torch on the floor.} The cave extends to the east and west.
+ [Take the east tunnel] -> east_tunnel
+ [Take the west tunnel] -> west_tunnel
* [Pick up the torch] -> torch_pickup

== east_tunnel ==
You are in the east tunnel. It is very dark, you can't see anything.
*{torch_pickup} [Light Torch] -> east_tunnel_lit
+ [Go back] -> cave_mouth
-> END

== west_tunnel ==
You are in the west tunnel. It is very  dark, you can't see anything.
*{torch_pickup} [Light Torch] -> west_tunnel_lit
+ [Cave mouth] -> cave_mouth
-> END

=== torch_pickup ===
You now have a torch. May it light the way.
*[Go back]-> cave_mouth
-> END

== east_tunnel_lit ==
The light of your torch glints off the thousands of coins in the room.
+ [Take a coin] -> coin_pickup
+ [Go back] -> cave_mouth_lit
-> END

== west_tunnel_lit ==
The light of your torch glints against rushing water leading further into the cave.
+[Follow the water] -> follow_water
+[Go back] -> cave_mouth_lit
*[Take water]-> water_take
-> END

=== coin_pickup ===
You admire the beautiful insignia of a dragon displayed on the golden coin.
+ [Go back] -> east_tunnel_lit_act_two
-> END

== east_tunnel_lit_act_two ==
You feel the hairs on the back of your neck raise, the temprature rises, and you hear the snarl of a beast. A large red dragon stands before you angry that you took from its hoard.
+ [Fight] -> fight
+ [Run] -> run
+ [Accept your fate] -> accept_your_fate

== accept_your_fate ==
You are given a long lecture Mrs. Blazedrake (the dragon) about why you shouldn't take other people's things without asking. You die from boredom and embarassment.
-> END

== fight ==
Fight? What do you mean fight? this is a narative assignment written in inky. Go back and pick again.
+[Fight] -> fight2
+[Go back] -> east_tunnel_lit_act_two
-> END

==fight2==
Just because you say it again doesn't mean I know how to make you fight. Go back.
+[Fight] -> fight3
+[Go back] -> east_tunnel_lit_act_two
-> END

==fight3==
Nope.
+[Fight] ->fight4
+[Go back] -> east_tunnel_lit_act_two
-> END

==fight4==
Nuh uh.
+[Go back] ->east_tunnel_lit_act_two

==run==
+[Leave cave] -> leave_cave
+[West tunnel] -> west_tunnel_lit
->END

==leave_cave==
You've left the cave you have one coin, a torch, and a story to share but not much else.
->END

==cave_mouth_lit==
You're back where you started.
+[Leave cave] -> leave
+[Take east tunnel] ->east_tunnel_lit
+[Take west tunnel] ->west_tunnel_lit
-> END

==leave==
Well that was a boring cave adventure.
->END

==follow_water==
As you go deeper into the cave the water forks into two paths. You're unable to see beyond the water infront of you so each choice is just as blind.
+[Go right] -> go_right
+[Go left] -> go_left
+[West tunnel] -> west_tunnel_lit
-> END

==go_right==
As you follow the water the cave opens up leaving you at the top of a waterfall with inky blackness below.
+[Jump into the unknown] -> jump
+ [Go back] -> follow_water
-> END

==jump==
You jump into the inky blackness for whatever awaits you.
+[Continue] -> jump2
->END

==jump2==
You hit the ground hard as your life fades away. PSA Don't jump of things you can't see the bottom from.
->END

==go_left==
You turn the corner to an open cavern. The ceiling coated with gemstones glinting like stars in the night sky. Tiny houses and buildins are sprawled across the walls and cavern floor. many different toadstools dot the cavern each glowing faintly purple, blue or green, fairies flutter around the cavern and notice you. One screams in terror, "FIRE!!!!!"
*{water_take} [Put out torch] ->snuff_torch
+[Call out] ->callout_torch
+[Run] -> follow_water
-> END

==callout_torch==
The fairies are to afraid of the fire to hear you calling out.
*{water_take} [Put out torch] ->snuff_torch
+[Run] ->follow_water
->END

==snuff_torch==
You poor your canteen out over the torch. The fairies calm as they see you mean them no harm. The quickly embrace you into their society you are their new gardian fairy. You may be one of the tallest fairies in existence but they don't mind. You get good pay in trinkets, nice place to call your own and some new friends out of it. I'd say that's a good spelunking session.
->END

==water_take==
You filled up your canteen with water. Stay Hydrated.
+[Go back] -> west_tunnel_lit
->END


