%{
int lc=0;
int cc=0;
int wc=0;
%}
%%
[a-zA-Z0-9] {cc++;}
" " {wc++;}
\n {wc++;lc++;printf("No of characters=%d\tNo of Words=%d\tNo of Lines=%d\n",cc,wc,lc);}
%%
int main(){
FILE *fp;
fp=fopen("input.txt","r");
if(!fp){
printf("File Not Found!\n");
}
yyin=fp;
yylex();
}
int yywrap(){
return 1;
}
