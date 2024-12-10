%{
%}
%s A B C
%%
<INITIAL>0 BEGIN B;
<INITIAL>1 BEGIN A;
<INITIAL>\n BEGIN INITIAL;printf("NOT ACCEPTED!\n");
<A>0 BEGIN C;
<A>1 BEGIN INITIAL;
<A>\n BEGIN INITIAL;printf("ACCEPTED\n");
<B>0 BEGIN INITIAL;
<B>1 BEGIN C;
<B>\n BEGIN INITIAL;printf("NOT ACCEPTED!\n");
<C>0 BEGIN A;
<C>1 BEGIN B;
<C>\n BEGIN INITIAL;printf("NOT ACCEPTED!\n");
%%
int main(){
printf("Enter Input\n");
yylex();
}
int yywrap(){
return 1;
}
