%{
#include <stdio.h>
#include <stdlib.h>
%}
%option noyywrap
INTEGER     [0-9]+
FLOAT       [0-9]+\.[0-9]+
IDENTIFIER  [a-zA-Z_][a-zA-Z0-9_]*
WHITESPACE  [ \t]+
%%
{INTEGER} {
    int num = atoi(yytext);

    if (num % 2 == 0)
        printf("%s This is even number\n", yytext);
    else
        printf("%s This is odd number\n", yytext);
}
{FLOAT} {
    printf("Float number:%s\n", yytext);
}
{IDENTIFIER} {
    printf("%s is a identifier\n", yytext);
}
{WHITESPACE} {
    printf("Whitespace this is a whitespace symbol\n");
}
\n {
    /* Ignore newline */
}
. {
    printf("%s this is used to denote point\n", yytext);
}
%%
int main()
{
    printf("Enter input:\n");
    yylex();
    return 0;
}