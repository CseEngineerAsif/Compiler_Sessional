%{
#include <stdio.h>
%}
%option noyywrap
%%



"int"|"if"|"return"  { printf("%s:keyword\n",yytext); }

"=="|"!="|"<="|">="|"<"|">"  { printf("%s:relational Operator\n",yytext); }

"="  { printf("%s:assignment Operator\n",yytext); }

"+"|"-"|"*"|"/"  { printf("%s:arithmetic Operator\n",yytext); }

[0-9]+  { printf("%s:Operand\n", yytext); }

[a-zA-Z_][a-zA-Z0-9_]*  { printf("%s:identifier\n",yytext); }

"("|")"|"{"|"}"|","|";"  { printf("%s  symbol\n",yytext); }

[ \t\n] {/* Whitespace ignore korar jonno */}

.  { printf("%s:Unknown\n",yytext); }

%%
int main()
{
    printf("\nEnter code:\n");
    yylex();
    return 0;
}