#include<stdio.h>
#include<sys/types.h>
#include<sys/stat.h>
#include<fcntl.h>

int main(void)
{
	int fileDescriptor = open("./files1", O_RDONLY);

	printf("%d is fd \n", fileDescriptor);


	return 0;
}
