%{
int vc=0;
int cc=0;
%}
%%
[aeiouAEIOU] {vc++;}
[a-zA-Z] {cc++;}
\n {printf("No of Vowels=%d\nNo of Consonents=%d\n",vc,cc);}
%%
int main(){
printf("Enter Input\n");
yylex();
return 0;
}
int yywrap(){
return 1;
}

