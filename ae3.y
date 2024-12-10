%{
#include<stdio.h>
int valid=1;
%}
%token id digit op
%%
start:id'='s';'
s:id x|digit x|'-'digit x|'('s')'x
x:op s|'-' s|;
%%
int yyerror(){
printf("Invalid Expression\n");
valid=0;
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
