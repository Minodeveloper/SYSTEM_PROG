#include <ncurses.h>

int main()
{
	initscr();
	addstr("GOODBYE, CRUEL WORLD!");
	addstr("++++++++++++++");
	refresh();	
	getch();	
	endwin();

	return 0;

}
