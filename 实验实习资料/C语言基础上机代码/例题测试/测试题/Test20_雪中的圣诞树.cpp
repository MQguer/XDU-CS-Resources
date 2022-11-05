/*******************************
圣诞树
byC语言小白入门
*******************************/
#include<stdio.h>
#include <stdlib.h>
#include <time.h>
#include<Windows.h>
#define X 25 						//画面长度

int background[20][2 * X] = { 0 };
int SNow = 30; 						//雪花密度

/*******************************
画树
*******************************/
void tree()
{
	int i,j,x,y;
	for (i = 0; i < 3; i++)
	{
		y = i;
		for (j = 0; j < 2 * i + 1; j++) background[y][(X - i) + j] = 1;

	}
	for (i = 0; i < 5; i++)
	{
		y++;
		for (j = 0; j < 2 * (i + 1) + 1; j++) background[y][(X - (i + 1)) + j] = 1;
	}
	for (i = 0; i < 7; i++)
	{
		y++;
		for (j = 0; j < 2 * (i + 3) + 1; j++) background[y][(X - (i + 3)) + j] = 1;

	}
	for (i = 0; i < 5; i++)
	{
		y++;
		for (j = 0; j < 3; j++) background[y][X + (2 * j - 2)] = 2;
	}
}

/*******************************
画雪花
*******************************/
void sNow()
{
	int i;
	srand(time(NULL));
	for (i = 0; i < SNow; i++)
	{
		int x,y;
		x = rand() % (2 * X);
		y = rand() % 20;
		if ((background[y][x] == 0)) background[y][x] = 3;
	}
}
/*******************************
打印
*******************************/
void display()
{
	int x,y;
	for (y = 0; y < 20; y++)
	{
		for (x = 0; x < 2 * X; x++)
		{
			if (background[y][x] == 0) printf(" ");
			if (background[y][x] == 1) printf("#");
			if (background[y][x] == 2) printf("|");
			if (background[y][x] == 3) printf("*");

		}
		printf("\n");
	}
}

/*******************************
清除雪花
*******************************/
void clear_sNow()
{
	int i,j;
	for (i = 0; i < 20; i++)
	{
		for (j = 0; j < 2 * X; j++)
		{
			if (background[i][j] == 3) background[i][j] = 0;
		}
	}
}
int main()
{
	tree();
	while (1)
	{
		sNow();
		display();
		Sleep(1);
		system("cls");
		clear_sNow();
	}
	return 0;
}
