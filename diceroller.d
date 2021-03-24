// diceroller.d: simple dice roller, supporting any number of sides and any number of dice

import std.stdio;
import std.string;
import std.conv;
import std.random;

void dieroll() {
	bool cont = true;
	while (cont) {
		auto rnd = Random(unpredictableSeed);
		write("How many sides? (positive integer) ");
		uint die = getUint();
		write("Roll how many dice? (positive integer) ");
		uint num = getUint();
		uint[] result;
		for ( ; num > 0; num--) {
			result ~= uniform(1, die + 1, rnd);
		}
		writeln("Rolled: ", result);
		write("Roll again? (y/n) ");
		string cont_c = strip(readln());
		cont = (cont_c == "Y" || cont_c == "y");
	}
}

uint getUint() {
	int buffer = getInt();
	while (buffer <= 0) {
		write("That's negative, try again: ");
		buffer = getInt();
	}
	return uint(buffer);
}

int getInt() {
	string s_buffer = strip(readln());
	while (!isNumeric(s_buffer)) {
		write("That's not an integer, try again: ");
		s_buffer = strip(readln());
	}
	return parse!int(s_buffer);
}
