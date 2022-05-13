%{
#include<stdio.h>	
%}
%token ZERO ONE


%%

E : T{
	printf("String accepted");
	return 0;
}

T : ZERO T ONE 
|
;

%%
int main(){
	yyparse();
}
int yyerror(){
	printf("Invalid expression");

}
