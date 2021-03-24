// monclass.d: a class to define a D&D monster

import std.string;

enum sizes { Tiny, Small, Medium, Large, Huge, Gargantuan }
enum types { Aberration, Beast, Celestial, Construct, Dragon, Elemental, Fey, Fiend, Giant, Humanoid, Monstrosity, Ooze, Plant, Undead }
enum alignLC { Lawful, Neutral, Chaotic }
enum alignGE { Good, Neutral, Evil }
struct alignment { alignLC lawChaos; alignGE goodEvil; }

class Monster {
	private sizes size;
	private types type;
	private alignment aligned;
	private uint armorClass;
	private uint hitPoints;
	private uint speed;
	private uint[string] statBlock;
	private int[string] statMods;
	private string[] langs;
	private double challenge;
}
