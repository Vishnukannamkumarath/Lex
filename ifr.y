%{
#include<stdio.h>
int valid=1;
%}
%token letter digit
%%
start:letter s
s:letter|digit|;
%%
int main(){
printf("Enter Identifier\n");
yyparse();
if(valid){
printf("Valid Identifier\n");
}
return 0;
}
int yyerror(){
printf("Invalid Identifier\n");
valid=0;
return 0;
}
