%{
int c=0;
%}
identifier [a-zA-Z_0-9]*
%%
#.* {printf("%s Preprocessor Directive\n",yytext);}
int|float|double|switch|typedef|struct|return|char|if|else|for|do|while|goto|break|continue|void {printf("%s It is Keyword\n",yytext);}
"/*" {c=1;}{printf("%s It is Comment\n",yytext);}
{identifier}\( {if(!c)printf("%s It is a Funtion\n",yytext);}
\{ {if(!c)printf("Block Begins\n");}
\} {if(!c)printf("Block Ends\n");}
{identifier}\{ {if(!c)printf("%s It is Identifier\n",yytext);}
[0-9]+ {if(!c)printf("%s It is Number\n",yytext);}
\".*\"  {if(!c)printf("%s It is String\n",yytext);}
\)
= {printf("%s It is Assignment operator\n",yytext);}
\<|\>|==|\<=|\>= {printf("%s It is Relational Operator\n",yytext);}
%%
int main(){
FILE *fp;
fp=fopen("hello.c","r");
if(!fp){
printf("File Not Found!\n");
}
yyin=fp;
yylex();
printf("\n");
return 0;
}
int yywrap(){
return 1;
}
 
