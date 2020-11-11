## Process this file with automake to produce Makefile.in

TESTS = check_hello
check_PROGRAMS = check_hello
check_hello_SOURCES = check_money.c $(top_builddir)/src/money.h
check_hello_CFLAGS = @CHECK_CFLAGS@
check_hello_LDADD = $(top_builddir)/src/libmoney.la @CHECK_LIBS@
