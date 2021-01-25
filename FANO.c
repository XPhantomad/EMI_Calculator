#define _CRT_SECURE_NO_WARNINGS
#include< stdio.h>
#include< conio.h>
#include< string.h>

struct node
{
	char sym[10];
	float pro;
	int arr[20];
	int top;
}s[20];

typedef struct node node;

void prints(int l, int h, node s[])
{
	int i;
	for (i = l; i <= h; i++)
	{
		printf("\n%s\t%f", s[i].sym, s[i].pro);
	}
}

void shannon(int l, int h, node s[])
{
	float pack1 = 0, pack2 = 0, diff1 = 0, diff2 = 0;
	int i, d, k, j;
	if ((l + 1) == h || l == h || l > h)
	{
		if (l == h || l > h)
			return;
		s[h].arr[++(s[h].top)] = 0;
		s[l].arr[++(s[l].top)] = 1;
		return;
	}
	else
	{
		for (i = l; i <= h - 1; i++)
			pack1 = pack1 + s[i].pro;
		pack2 = pack2 + s[h].pro;
		diff1 = pack1 - pack2;
		if (diff1 < 0)
			diff1 = diff1 * -1;
		j = 2;
		while (j != h - l + 1)
		{
			k = h - j;
			pack1 = pack2 = 0;
			for (i = l; i <= k; i++)
				pack1 = pack1 + s[i].pro;
			for (i = h; i > k; i--)
				pack2 = pack2 + s[i].pro;
			diff2 = pack1 - pack2;
			if (diff2 < 0)
				diff2 = diff2 * -1;
			if (diff2 >= diff1)
				break;
			diff1 = diff2;
			j++;
		}
		k++;
		for (i = l; i <= k; i++)
			s[i].arr[++(s[i].top)] = 1;
		for (i = k + 1; i <= h; i++)
			s[i].arr[++(s[i].top)] = 0;
		shannon(l, k, s);
		shannon(k + 1, h, s);
	}
}

void main()
{
	int n, i, j;
	float x, total = 0;
	char ch[10];
	node temp;
	printf("Enter How Many Symbols Do You Want To Enter\t: ");
	scanf("%d", &n);
	for (i = 0; i < n; i++)
	{
		printf("Enter symbol %d ---> ", i + 1);
		scanf("%s", ch);
		strcpy(s[i].sym, ch);
	}
	for (i = 0; i < n; i++)
	{
		printf("\n\tEnter probability for %s ---> ", s[i].sym);
		scanf("%f", &x);
		s[i].pro = x;
		total = total + s[i].pro;
		if (total > 1)
		{
			printf("\t\tThis probability is not possible.Enter new probability");
			total = total - s[i].pro;
			i--;
		}
	}
	s[i].pro = 1 - total;
	for (j = 1; j <= n - 1; j++)
	{
		for (i = 0; i < n - 1; i++)
		{
			if ((s[i].pro) > (s[i + 1].pro))
			{
				temp.pro = s[i].pro;
				strcpy(temp.sym, s[i].sym);
				s[i].pro = s[i + 1].pro;
				strcpy(s[i].sym, s[i + 1].sym);
				s[i + 1].pro = temp.pro;
				strcpy(s[i + 1].sym, temp.sym);
			}
		}
	}
	for (i = 0; i < n; i++)
		s[i].top = -1;

	shannon(0, n - 1, s);
	printf("---------------------------------------------------------------");
	printf("\n\n\n\tSymbol\tProbability\tCode");
	for (i = n - 1; i >= 0; i--)
	{
		printf("\n\t%s\t%f\t", s[i].sym, s[i].pro);
		for (j = 0; j <= s[i].top; j++)
			printf("%d", s[i].arr[j]);
	}
	printf("\n---------------------------------------------------------------");
	_getch();
}