%{
#include <stdio.h>
%}
%option noyywrap
%%
int|float|if|else|while|return {
    printf("Keyword: %s\n", yytext);
}
[0-9]+\.[0-9]+ {
    printf("Floating-point number: %s\n", yytext);
}
[0-9]+ {
    printf("Integer: %s\n", yytext);
}
[a-zA-Z_][a-zA-Z0-9_]* {
    printf("Identifier: %s\n", yytext);
}
[ \t\r\n]+ ;
. ;
%%
int main()
{
    yylex();
}