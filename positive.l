%{
int pc=0;
int nc=0;
%}
%%
[0-9]+ {pc++;printf("It is Positive Number\n");}
[-][0-9]+ {nc++;printf("It is Negative Number\n");}
end {printf("No of Positive Numbers=%d\nNo of Negative Numbers=%d\n",pc,nc);}
%%
int main(){
printf("Enter Number\n");
yylex();
return 0;
}
int yywrap(){
return 1;
}

