%{
int pc=0;
int nc=0;
%}
%%
[0-9]+ {pc++;printf("Positive Number\n");}
[-][0-9]+ {nc++;printf("Negative Number\n");}
end {printf("No of Positive Numbers=%d\nNo of Negative Numbers=%d\n",pc,nc);}
%%
int main(){
printf("Enter Numbers\n");
yylex();
return 0;
}
int yywrap(){
return 1;
}
