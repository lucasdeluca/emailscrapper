%{

#include <stdio.h>
int i=0;

%}


%%


[^ \@\t\n\.\-][A-Za-z0-9\.\-\_]*[^ \.\-]@[^ \.\-][A-Za-z0-9\.]*[^ \-]$ {
	printf("%s\n", yytext);
}

[^ \@\t\n\.\-][A-Za-z0-9\.\-\_]*[^ \.\-]@[^ \.\-][A-Za-z0-9\.]*[\.\?\!]  {
for (i=0; i<yyleng-1; i++){
	printf("%c", yytext[i]);
}
printf ("\n");
}

[^ \@\t\n\.\-][A-Za-z0-9\.\-\_]*[^ \.\-]@[^ \.\-][A-Za-z0-9\.]*[\-\_\+]  ;



[^ \@\t\n\.\-][A-Za-z0-9\.\-\_]*[^ \.\-]@[^ \.\-][A-Za-z0-9\.]* {	
	printf("%s\n", yytext);
}

\n ;
. ;


%%


int main() {
  yylex();
  return 0;
}
