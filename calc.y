%{
//author: Hatice Seyma YIGIT 1305012041
//date: 21.03.2019
//subject: yacc file for calculator
#include <stdlib.h>
#include <stdio.h>
int yylex(void);
%}
%token INTEGER
%%
program:
       line program | line
line:
    expr '\n' { printf("%d\n",$1); } | 'n'
expr:
    expr '+' expr { $$ = $1 + $3; } | expr '-' term { $$ = $1 - $3; } 
    | expr '*' term { $$ = $1 * $3; } | expr '/' term { $$ = $1 / $3; }
     | expr '%' term { $$ = $1 % $3; } 
	| term { $$ = $1; }
term:
    INTEGER { $$ = $1; }
%%
void yyerror(char *s) { fprintf(stderr,"%s\n",s); return; }
int main(void) { yyparse(); return 0; }
