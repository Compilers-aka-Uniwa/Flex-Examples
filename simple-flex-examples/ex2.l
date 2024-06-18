/* Repeats anything that begins or ends with 'a' */
/* flex -o ex2.c ex2.l */
/* gcc -o ex2 ex2.c */
%option noyywrap
%{
	#include <stdio.h>
%}
begins_with_a	a.*\n
ends_with_a	.*a\n
%%

{begins_with_a}	{ECHO; printf("Begins with a\n");};
{ends_with_a}	{ECHO; printf("Ends with a\n");};

.*\n	;
%%

void main()
{ yylex(); }
