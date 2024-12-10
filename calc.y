%{
#include<stdio.h>
int valid=1;
%}
%token num
%left '+''-'
%left '*''/''%'
%left '('')'
%%
ArithmeticExpression:E{printf("Result=%d\n",$$);return 0;}
E:E'+'E {$$=$1+$3;}
 |E'-'E {$$=$1-$3;}
 |E'*'E {$$=$1*$3;}
 |E'/'E {$$=$1/$3;}
 |E'%'E {$$=$1%$3;}
 |'('E')' {$$=$2;}
 |num {$$=$1;}
 ;
%%
int yyerror(){
printf("Invalid Expression!\n");
valid=0;
return 0;
}
int main(){
printf("Enter Expression\n");
yyparse();
if(valid){
printf("Valid Expression\n");
}
}
