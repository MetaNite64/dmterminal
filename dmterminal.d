// dmterminal.d: the minimal dungeon master's friend

import std.stdio;
import std.string;
import std.conv;
import diceroller;

void main() {
	bool cont = true;
	int choice;
	string buffer;
	while (cont) {
		displaymenu();
		buffer = strip(readln());
		while (!isNumeric(buffer)) {
			writeln("error- not a number. try again");
			displaymenu();
			buffer = strip(readln());
		}
		choice = parse!int(buffer);
		switch (choice) {
			case 1: dieroll();
				break;
			case 2: cont = false;
				break;
			default: writeln("error- not a choice. try again");
				 break;
		}
	}
}

void displaymenu() {
	write("pick an option:\n1. roll some dice\n2. quit\n> ");
}
