%{
int cc=0;
int lc=0;
int wc=0;
%}
%%
[a-zA-Z] {cc++;}
" " {wc++;}
\n {lc++;wc++;}
%%
int main(){
FILE *fp;
fp=fopen("input.txt","r");
if(!fp){
printf("File Not Found!\n");
}
yyin=fp;
yylex();
printf("No of Characters=%d\nNo of Words=%d\nNo of Lines=%d\n",cc,wc,lc);
return 0;
}
int yywrap(){
return 1;
}
