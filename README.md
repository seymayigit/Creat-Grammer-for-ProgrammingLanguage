# Creat-Grammer-for-ProgrammingLanguage
1.First you should install these programs: gcc, make, flex, bison. (flex is a lexical analysis tool, bison is a kind of yacc tool for syntactic analysis). For installation, you can use the following command in Ubuntu: 

    sudo apt-get install gcc make flex bison 

2.Download and extract files from this into your PC. 

3.Go into the ‘calc’ folder and run make command: 

    make test file=input1.txt 

4.Inspect the output of the program and the content of input1.txt. To see file content: 

    cat input1.txt  
    
5.If you modify on the files, you may need to run ‘make clean’ before compiling your program with ‘ make test file=input1.txt ’.
 
BNF form of the grammar for mathematical calculation:

    <program> -> <line><program>
    | <line>
    <line> -> <expr>
    <expr> -> <expr> + <expr>
	     | <expr> - <term>
	     | <expr> * <term>
	     | <expr> % <term>
	     | <expr> / <term>
	     | <term>
	<term> -> 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9  
  
6.Arithmetically, the multiplication (*), division (/) and the mode acquisition (%) have the same priority among themselves. It is done before addition (+) and subtraction (-). Addition and subtraction has equality in itself.
