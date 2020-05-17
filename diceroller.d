import std.stdio;
import std.string;
import std.conv;
import std.random;

void dieroll() {
	bool cont = true;
	while (cont) {
		auto rnd = Random(unpredictableSeed);
		write("Roll what type of die? ");
		uint die;
		string die_s = strip(readln());
		while (!isNumeric(die_s)) {
			write("That's not an integer, try again: ");
			die_s = strip(readln());
		}
		die = parse!uint(die_s);
		write("Roll how many dice? ");
		string num_s = strip(readln());
		while (!isNumeric(num_s)) {
			write("That's not an integer, try again: ");
			num_s = strip(readln());
		}
		uint num = parse!uint(num_s);
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
