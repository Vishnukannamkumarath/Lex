%{
int vc=0;
int cc=0;
%}
%%
[aeiouAEIOU] {vc++;}
[a-zA-Z] {cc++;}
end {printf("No of Vowels=%d\nNo of Consonents=%d\n",vc,cc);}
%%
int main(){
printf("Enter String\n");
yylex();
return 0;
}
int yywrap(){
return 1;
}

