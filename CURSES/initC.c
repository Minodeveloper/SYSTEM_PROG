#include <ncurses.h>
 
int main(void)
{
	initscr();

	clear();
	
	for(int i = 0; i < LINES; i++)
	{
		move(i, i+i);
	if(i%2 == 1){
		standout();
	}
	addstr("HELLO");
	if(i%2== 1){
	standend();
	}
	}
refresh();
getch();
endwin();



	return 0;
}
