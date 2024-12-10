%{
int c=0;
%}
identifier [a-zA-Z_0-9]*
%%
#.* {printf("%s Preprocessor Directive\n",yytext);}
void|int|char|float|struct|typedef|if|else|do|while|goto|return|break|continue|switch|for|double {printf("%s Keyword\n",yytext);}
"/*" {c=1;}{printf("%s Comment\n",yytext);}
{identifier}\( {if(!c)printf("%s Funtion\n",yytext);}
\{ {if(!c)printf("Block Begins\n");}
\} {if(!c)printf("Block Ends\n");}
{identifier}\  {if(!c)printf("%s Identifier\n",yytext);}
\".*\" {if(!c)printf("%s String\n",yytext);}
[0-9]+ {if(!c)printf("%s Number\n",yytext);}
\)
= {if(!c)printf("%s Assignment Operator\n",yytext);}
\<|\>|\<=|\>=|== {if(!c)printf("%s Relational Operator\n",yytext);}
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

