#include<stdio.h>
/*
	comment
*/
#define HEAD(fd) char*h="#include<stdio.h>%c/*%c%ccomment%c*/%c#define HEAD(fd) char*h=%c%s%c;dprintf(fd,10,10,9,10,10,34,h,34)"dprintf(fd,10,10,9,10,10,34,h,34);
#define MACR(fd) char*m="#define MACR(fd) char*m=%c%s%c;dprintf(fd,34,m,34);"dprintf(fd,34,m,34);
#define MAIN() int main(){fd=open('Grace_kid.c');HEAD(fd)MACR(fd)}
MAIN()
