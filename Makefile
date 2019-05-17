PROGRAM       = hw1b
OBJS          = calc.tab.o lex.yy.o 
SRCS          = calc.tab.c lex.yy.c     
CC            = gcc      
all:            $(PROGRAM)
	 
.c.o:           $(SRCS)
		$(CC) -c $*.c -o $@ -O
			 
calc.tab.c:     calc.y
	        bison -d calc.y
			 
lex.yy.c:       calc.l 
	        flex calc.l
			 
hw1b:           $(OBJS)
	        $(CC) $(OBJS)  -o hw1b -lfl -lm
			 
clean:;         rm -f $(OBJS) core *~ \#* *.o $(PROGRAM) \
	                y.* lex.yy.* calc.tab.*
test : 
	make
	./hw1b < $(file)
