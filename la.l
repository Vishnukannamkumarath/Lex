%{
int c=0;
%}
identifier [a-zA-Z_0-9]*
%%
#.* {printf("%s Preprocessor Directive\n",yytext);}
int|float|double|char|void|if|else|do|while|switch|typedef|return|struct|break|continue|goto|for {printf("%s Keyword\n",yytext);}
"/*" {c=1;}{printf("%s Comment\n",yytext);}
{identifier}\( {if(!c)printf("%s Funtion\n",yytext);}
\{ {if(!c)printf("Block Begins\n");}
\} {if(!c)printf("Block Ends\n");}
{identifier}\  {if(!c)printf("%s Identifier\n",yytext);}
\".*\" {if(!c)printf("%s String\n",yytext);}
[0-9]+ {if(!c)printf("%s Number\n",yytext);}
\)
= {printf("%s Assignment Operator\n",yytext);}
\<|\>|\<=|\>=|== {if(!c)printf("%s Relational Operators\n",yytext);}
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
int yywrap(){
return 1;
}
