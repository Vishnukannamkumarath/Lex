%{
int c=0;
%}
identifier [a-zA-Z_0-9]*
%%
#.* {printf("%s Preprocessor Directive\n",yytext);}
int|char|double|void|float|return|if|else|for|do|while|struct|switch|typedef|goto|break|continue {printf("%s Keyword\n",yytext);}
"/*" {c=1;}{printf("%s comment\n",yytext);}
{identifier}\( {if(!c)printf("%s Funtion\n",yytext);}
\{ {if(!c)printf("Block Begins\n");}
\} {if(!c)printf("Block Ends\n");}
{identifier}\  {if(!c)printf("%s Identifier\n",yytext);}
\".*\" {if(!c)printf("%s string\n",yytext);}
[0-9]+ {if(!c)printf("%s number\n",yytext);}
\)
= {if(!c)printf("%s assignment operator\n",yytext);}
\<|\>|\<=|\>=|== {if(!c)printf("%s Relational operator\n",yytext);}
%%
int main(){
FILE *fp;
fp=fopen("hello.c","r");
if(!fp){
printf("File Not Found\n");
}
yyin=fp;
yylex();
printf("\n");
return 0;
}
