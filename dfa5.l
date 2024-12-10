%{
%}
%s A 
%%
<INITIAL>0 BEGIN INITIAL;
<INITIAL>1 BEGIN A;
<INITIAL>\n BEGIN INITIAL;printf("ACCEPTED\n");
<A>0 BEGIN INITIAL;
<A>1 BEGIN A;
<A>\n BEGIN INITIAL;printf("NOT ACCEPTED!\n");
%%
int main(){
printf("Enter\n");
yylex();
return 0;
}
int yywrap(){
return 1;
}
