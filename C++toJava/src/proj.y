/*
 ///============================================================================
 // Name        : Bison Input File
 // Author      : nDy
 // Version     : 0.1
 // Copyright   : GPL V2.0
 // Description : Bison input file for c++ class recognition
 //============================================================================
 */
 
%{
int yyerror(char *s);
%}


%union {
        float* fval;
        char* str;
        };
        
%token PUBLIC_ACCESS_MODIFIER PRIVATE_ACCESS_MODIFIER
%token INT FLOAT CHAR VOID
%token COMPEQ COMPLOEQ COMPGOEQ COMPL COMPG
%token EQ PLUS MINUS MULT DIV MOD
%token COMMA LPAR RPAR LBRA RBRA NEWL

%start program       

%%

program: INT FLOAT
    | FLOAT

%%

int yyerror(char *s)
{
return 1;
}