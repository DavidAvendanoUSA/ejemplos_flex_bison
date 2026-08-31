%{
#include <stdlib.h>
#include "fb1-5.tab.h"

void yyerror(const char *s);
%}

%option noyywrap

%%
"+"      { return ADD; }
"-"      { return SUB; }
"*"      { return MUL; }
"/"      { return DIV; }
"|"      { return ABS; }
[0-9]+   { yylval = atoi(yytext); return NUMBER; }
\n       { return EOL; }
[ \t]    { /* ignorar espacios */ }
.        { yyerror("carácter desconocido"); }
%%
