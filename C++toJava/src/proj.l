/*
 ///============================================================================
 // Name        : Flex Input File
 // Author      : nDy
 // Version     : 0.1
 // Copyright   : GPL V2.0
 // Description : Flex input file for c++ class recognition
 //============================================================================
 */
%option noyywrap

%{
#include<stdio.h>
#include <math.h>
#include "proj.tab.h"
#include <string.h>

char* tokens;
%}

DIGIT [0-9]
ID [a-zA-Z_][a-zA-Z0-9_]*
%%

{DIGIT}+ {
	tokens = strdup(yytext); yylval.str=strdup(yytext);
									
printf("int en yytext %d string en el yylval %s \n",atoi(yytext),yylval.str);
return INT;
}

{DIGIT}+"."{DIGIT}+ {
	printf("float %f\n",atof(yytext));
}

%%

main( argc, argv )
int argc;
char **argv;
{
	++argv, --argc; /* se salta el nombre del programa */
	if ( argc > 0 )
	yyin = fopen( argv[0], "r" );
	else
	yyin = stdin;
	yylex();
}
