#include<stdio.h>

int swap(int *a1, int *a2, int index)
{
	int temp = a1[index];
	a1[index] = a2[index];
	a2[index] = temp;
}

int main(int argc, char *argv[])
{
	int odds[] = {1,3,5,6};
	int even[] = {34,43,2,4};


	for (int i = 0; i < 4; i++)
	{
		printf("even %d ,", even[i]);
	}
	printf("\n");
		
	for (int i = 0; i < 4; i++)
	{
		printf("odd %d ,", odds[i]);
	
	}


	printf("\n");

	for (int i = 0; i < 4; i++)
	{
		swap(odds, even, i);
	}

	for (int i = 0; i < 4; i++)
	{
		printf("even %d ,", even[i]);
	}
	printf("\n");
		
	for (int i = 0; i < 4; i++)
	{
		printf("odd %d ,", odds[i]);
	
	}

	printf("\n");
	return 0;
}
