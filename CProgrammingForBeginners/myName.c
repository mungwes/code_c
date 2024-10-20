#include <stdio.h>

int main()
{
	char name[256];

	printf("Please, type in your name:\n");

	scanf("%s", name);

	printf("Your name is %s\n", name);

	return 0;
}