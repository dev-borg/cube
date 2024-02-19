
#include<stdio.h>
#include<stdlib.h>
#include<unistd.h>

int main(void)
{
	unsigned long int i = 1;
	while(1)
	{
		printf("Looping, iteration #%021ld ...\n", i++);
		(void) sleep(1);
	}
	exit (EXIT_SUCCESS);

}
