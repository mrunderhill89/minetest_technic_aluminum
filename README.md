# Technic Aluminum Mod
by Kevin "mrunderhill89" Cameron

SUMMARY:
A modpack for minetest that introduces aluminum to the game, along with 
related materials and craft items.The mod is designed as an extension of
the Technic mod (https://github.com/minetest-technic/technic) and thus I
highly recommend you use them together. The mod also includes a few sets
of armor using the 3d Armor mod (https://github.com/stujones11/minetest-3d_armor.git).

HOW TO USE:
The mod is structured as a modpack, so just dump it into your 
minetest/mods folder and you can activate it from the main menu. 
Since it does add new ores, though, you might want to make a new world 
for them to appear.

MAKING ALUMINUM:
The mod starts by adding a new ore, bauxite, to the game. Bauxite is 
somewhat different from other ores in minetest because processing it 
into aluminum is a multi-step process; you can't just dump bauxite lumps
into a furnace like you can with iron. If you do that, instead you'll 
get something called aluminum oxide (or alumina for short), which can
be used for some niche cases like synthesizing gems (more on that later),
but is otherwise worthless for smelting.

Historically, pure aluminum wasn't readily available for industrial 
purposes until the Hall–Héroult process was discovered between 1886 and
1888. The process uses electrolysis to separate metallic aluminum from 
alumina with a powerful electric current.

Since Technic doesn't have an electrolysis machine, but it does 
have electricity, this mod uses the centrifuge as the next best thing, 
as it's already used for separating base metals from alloys. With a 
grinder and a centrifuge you can convert aluminum oxide dust into 
aluminum metal dust, which can be used for smithing ingots.

Pure aluminum can be used to make weapons and armor, and it can
substitute for cast iron or carbon steel in a handful of technic recipes,
like the electric motor and machine casing. It can also be alloyed with
copper or zinc to produce stronger materials (2xxx-series aluminum and
7xxx-series aluminum, respectively).

RUBY AND SAPPHIRE:
In addition to bauxite, the mod also includes rubies and sapphires
as gemstones, like diamonds in the base game. This is because ruby and 
sapphire are two varieties of corundum, a substance which is largely
comprised of aluminum oxide. The gems can be used in many of the same
situations as diamond would be, such as producing hydroelectric or 
geothermal generators, energy crystals, and so on. They also have unique
armor sets associated with them. Sapphire armor allows you to breathe
underwater while ruby armor gives fire resistance, which are both
functions available in the 3D Armor mod, but the default armors don't use
them.

Because rubies and sapphires are made of aluminum oxide, it's possible 
(though time consuming) to synthesize them with a grinder alloy furnace,
and compressor. Sapphires are made using alumina and iron dust, while 
rubies use alumina and chromium dust. Each gem can be made with four 
samples of corundum dust, which in turn is made with three samples of 
alumina dust and one of the alloy material.

BALANCE CONSIDERATIONS:
	Adding a bunch of materials and crafting paths to the game is obviously 
going to shift balance around. Bauxite spawns at higher elevations than
iron out of personal preference, but since it doesn't become useful for
smelting until you have an MV source at least, you're probably going to
be stockpiling until then.


LICENSE:
	Admittedly, this mod was cobbled together from many other mods, so I
can't claim full credit for it. As far as I'm concerned, anything I made
directly is WTFPL, but I'm including the licenses of the mods I borrowed
from just in case.

Technic: 

LGPL, V2 or later.

3D Armor:
	
Default Item Textures (C) Cisoun - WTFPL
	
Armor Textures: Copyright (C) 2013 Ryan Jones - CC-BY-SA
	https://creativecommons.org/licenses/by-sa/2.0/
	
Source Code: Copyright (C) 2013 Stuart Jones - LGPL


SPECIAL THANKS:
To everyone who worked on the Technic and 3d Armor mods.
  * kpoppel
  * Nekogloop
  * Nore/Ekdohibs
  * ShadowNinja
  * VanessaE
  * Cisoun
  * Ryan and Stuart Jones
  * And many others...

And of course, very special thanks to Maciej "RealBadAngel" Kasatkin,
without whom this mod wouldn't have been possible.
