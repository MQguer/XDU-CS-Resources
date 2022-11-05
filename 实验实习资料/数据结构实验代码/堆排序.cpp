#include <iostream>

using namespace std;

int hsort(int a[],int i);//用于选出三个数中小的，放在第一位，并将原首元素位置与其交换,返回被交换元素位置 
int t=1;
 
int main()
{
	int i=0,j=0,temp=0,last=100000;
	int n=0,a[100]={0},flag=0;
	cin>>n;
	flag=n;
	
	for(i=1;i<=n;i++)//0号未用 
	{
		cin>>a[i];
	}
	
	while(t!=0)//多次循环查找 
	{
		t=0;
		if(n%2==0)//第一个叶子n,若其父结点有两个叶子，则最后一结点应为右孩子
		{
			if(a[n]<a[n/2])//仅有左孩子,两个点比较即可 
			{
				temp=a[n],a[n]=a[n/2],a[n/2]=temp;
			}
			flag=n-1;
		}
		
		for(i=flag;i>2;i=i-2)//从后往前,每次移动两位
		{
			last=hsort(a,i);//其余均需比较三个点
		}
	}
	
	for(i=1;i<=n;i++)
	{
		cout<<a[i]<<" ";
	}
	
	return 0;
}

int hsort(int a[],int i)
{
	int temp=0;
	int x=a[i],y=a[i-1],z=a[(i-1)/2];
	if(z<=x&&z<=y)//先判断三个元素是否已是小顶堆，若是则返回0
	{
		return 0;
	}
	else//不是则将其与剩下两个元素中较小的一个交换,返回被交换的位置 
	{
		t++;
		if(y>x)//右孩子更小 
		{
			temp=a[(i-1)/2],a[(i-1)/2]=a[i],a[i]=temp;
			return i;
		}
		else//左孩子更小 
		{
			temp=a[(i-1)/2],a[(i-1)/2]=a[i-1],a[i-1]=temp;
			return i-1;
		}
	}
}
