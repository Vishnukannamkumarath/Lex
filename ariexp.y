%{
#include<stdio.h>
int valid=1;
%}
%token letter digit op
%%
start:letter|digit'='s';'
s:letter x|digit x|'-'digit x|'('s')'x
x:op s|'-' s|;
%%
int yyerror(){
printf("invalid Expression\n");valid=0;
return 0;
}
int main(){
printf("Enter Expression\n");
yyparse();
if(valid){
printf("Valid Expression\n");
}
return 0;
}

