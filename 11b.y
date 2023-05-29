%{
#include<stdio.h>
#include<stdlib.h>
int yylex();
void yyerror();
%}
%token ZERO ONE
%%
S: L '.' L
 | L
 ;
L: L B
 | B
 ;
B: ZERO 
 | ONE
 ;
%%
void main() 
{ 
	printf("Enter Binary Number \n"); 
	yyparse(); 
	printf("Valid \n");
} 
void yyerror() 
{ 
	printf("Invalid\n"); 
	exit(1);
} 
