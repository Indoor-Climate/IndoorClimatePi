all: hello.exe

hello.o: hello.c
	 gcc -c hello.c
	 
hello.exe: hello.o
	 gcc -o hello.exe hello.o
     
clean:
	 rm hello.o hello.exe
