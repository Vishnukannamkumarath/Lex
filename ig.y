%{
#include<stdio.h>
char p='A';
%}
%union {char dval;}
%token num sign
%left '+''-'
%left '*''/'
%type<dval>S
%type<dval>E
%%
S:E {printf("X=%c\n",$$);return 0;}
E:num{}|E'+'E {printf("%c=%c+%c\n",p,$1,$3);$$=p;p++;}
|E'-'E {printf("%c=%c-%c\n",p,$1,$3);$$=p;p++;}
|E'*'E {printf("%c=%c*%c\n",p,$1,$3);$$=p;p++;}
|E'/'E {printf("%c=%c/%c\n",p,$1,$3);$$=p;p++;}
;
%%
int main(){
printf("Enter Input\n");
yyparse();
printf("Valid Expression\n");
}
int yyerror(){
printf("Invalid Expression\n");
return 0;
}
