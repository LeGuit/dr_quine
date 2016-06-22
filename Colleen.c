#include<stdio.h>

void my_func(void){}
/*
	Comment 1
*/
char*i="\\#include<stdio.h>",*f="void my_func(void){}",n='\n',q='"',t='\t',*p=
"%1$s%2$c%2$c%3$s%2$c/*%2$c%9$cComment 1%2$c*/%2$cchar*i=%4$c%5$c%6$s%4$c,*f=%4$c%3$s%4$c,n='%5$cn',q='%4$c',t='%5$ct',*p=%4$c%2$c%7$s%4$c,*m=%2$c%4$c%8$s%4$c%2$c;%8$s%2$c",*m=
"int main(){return!printf(p,i+1,n,f,q,*i,i,p,m,t);}"
;int main(){return!printf(p,i+1,n,f,q,*i,i,p,m,t);}

