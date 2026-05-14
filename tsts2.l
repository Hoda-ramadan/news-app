

%%
[a-z]+ printf("id id found %s\n",yytext);
\+|\=|\-|\*|\/ printf(" op found %s\n",yytext);
\(|\)|\; printf(" op found %s\n",yytext);
\n ;
%%
int yywrap(){
    return 0;
}
int main(){
    yylex();
    return 0;
}