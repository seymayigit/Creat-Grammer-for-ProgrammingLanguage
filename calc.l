%{
//author: Hatice Seyma YIGIT 1305012041
//date: 21.03.2019
//subject: lex file for calculator
#include <stdlib.h>
#include <stdio.h>
void yyerror(char*);
extern int yylval;
#include "calc.tab.h" 
%}
%%
[ \t]+ ;
[0-9]+ {yylval = atoi(yytext); return INTEGER;}
[-+*/%] {return *yytext;}
\n {return *yytext;}
. {char msg[25]; sprintf(msg,"%s <%s>","invalid character",yytext); yyerror(msg);}
