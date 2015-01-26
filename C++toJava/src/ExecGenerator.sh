flex proj.l
bison -d proj.y
gcc -c lex.yy.c -lfl -o flex.o
gcc -c proj.tab.c -o bison.o
gcc flex.o bison.o -o proj
rm lex.yy.c flex.o proj.tab.c bison.o
