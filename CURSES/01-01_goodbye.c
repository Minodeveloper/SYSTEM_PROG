#include <ncurses.h>

int main()
{
	initscr();

	addstr("GOODBYE, CRUEL WORLD!");

	endwin();

	return 0;

}
