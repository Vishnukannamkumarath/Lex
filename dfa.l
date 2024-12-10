%{
%}
%s A B C
%%
<INITIAL>1 BEGIN A;
<INITIAL>0 BEGIN B;
<INITIAL>\n BEGIN INITIAL;printf("NOT ACCEPTED!\n");
<A>1 BEGIN INITIAL;
<A>0 BEGIN C;
<A>\n BEGIN INITIAL;printf(" NOT ACCEPTED\n");
<B>1 BEGIN C;
<B>0 BEGIN INITIAL;
<B>\n BEGIN INITIAL;printf("NOT ACCEPTED!\n");
<C>1 BEGIN B;
<C>0 BEGIN A;
<C>\n BEGIN INITIAL;printf("ACCEPTED\n");
%%
int main(){
printf("Enter Input\n");
yylex();
}
int yywrap(){
return 1;
}
