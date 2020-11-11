all: hello.exe

hello.o: start.c
	 gcc -c start.c
	 
hello.exe: hello.o
	 gcc -o hello.exe hello.o
     
clean:
	 rm hello.o hello.exe
