#include <stdio.h>
#include <time.h>
int main(int argc, char *argv[])
{
	time_t now;

	now = time(NULL);

	struct tm *clock;

	clock = localtime(&now);

	int hour = clock->tm_hour;

	printf("\n");
	printf(" \t\t");
	if(hour < 6)
	{
		printf("MASTER %s YOU NEED TO SLEEP NOW !\n",argv[1]);
	}else if (hour > 6 && hour <  12)
	{
		printf("GOOD MORNING MASTER !\n");
	}
	else if (hour > 12 && hour < 16)
	{
		printf("GOOD AFTERNOON MASTER %s!\n",argv[1]);

	}
	else if (hour > 16 && hour < 22)
	{
		printf("GOOD EVENING MASTER !\n");
	}
	else 
	{
		printf("TIME TO SLEEP MASTER !\n");

	}

	printf("\n");	
//	printf("\t\t%s \n", ctime(&now));

	char timeBuffer[64];

	
	strftime(timeBuffer, 64,"%t%t It is %r%n%n",clock);	
	printf("%s\n", timeBuffer);
	strftime(timeBuffer, 64,"%t%t%A, %B %d, %Y%n%n",clock);	
	
	printf("%s\n", timeBuffer);

	return 0;	
}
