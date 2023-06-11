#include <stdio.h>
#include <time.h>
int main(int argc, char *argv[])
{
	time_t now;
	time(&now);

	printf("The computer thinls it's %ld\n", now);

	printf("%s\n", ctime(&now));

	if (argc < 2)
	{
		printf("Hello , you handsome beast !\n");
	}
	else
	{
		printf("Hello, %s !\n", argv[1]);
	}

	return 0;
}
