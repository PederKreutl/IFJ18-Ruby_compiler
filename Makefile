#------------------------------------------------------------------------------#
# File:     Makefile                                                           #
# Project:  2BIT IFJ, compiler                                                 #
#           Faculty of Information Technolgy                                   #
#           Brno University of Technology                                      #
# Authors:  Martin Chládek <xchlad16@stud.fit.vutbr.cz>                        #
#           Peter Kruty <xkruty00@stud.fit.vutbr.cz>                           #
#           Michal Krůl <xkrulm00@stud.fit.vutbr.cz>                           #
#           Bořek Reich <xreich06@stud.fit.vutbr.cz>                           #
# Date:     06.12.2018                                                         #
#------------------------------------------------------------------------------#

CC=gcc
CFLAGS=-std=c99 -pedantic -Wall -Wextra
OF= errors.o symtable.o str.o scanner.o generator.o parser.o main.o expression.o stack.o
COMPILER=test-prekladac
#------------------------------------------------------------------------------#
compiler: $(OF)
	$(CC) $(CFLAGS) $(OF) -o $(COMPILER)
	rm -f $(OF)
#------------------------------------------------------------------------------#
main.o: main.c
	$(CC) $(CFLAGS) -c main.c -o main.o
#------------------------------------------------------------------------------#
errors.o: code/errors.c headers/errors.h
	$(CC) $(CFLAGS) -c code/errors.c -o errors.o
#------------------------------------------------------------------------------#
symtable.o: code/symtable.c headers/symtable.h
	$(CC) $(CFLAGS) -c code/symtable.c -o symtable.o
#------------------------------------------------------------------------------#
str.o: code/str.c headers/str.h
	$(CC) $(CFLAGS) -c code/str.c -o str.o
#------------------------------------------------------------------------------#
scanner.o: code/scanner.c headers/scanner.h
	$(CC) $(CFLAGS) -c code/scanner.c -o scanner.o
#------------------------------------------------------------------------------#
generator.o: code/generator.c headers/generator.h
	$(CC) $(CFLAGS) -c code/generator.c -o generator.o
#------------------------------------------------------------------------------#
parser.o: code/parser.c headers/parser.h
	$(CC) $(CFLAGS) -c code/parser.c -o parser.o
#------------------------------------------------------------------------------#
expression.o: code/expression.c headers/expression.h
	$(CC) $(CFLAGS) -c code/expression.c -o expression.o
#------------------------------------------------------------------------------#
stack.o: code/stack.c headers/stack.h
	$(CC) $(CFLAGS) -c code/stack.c -o stack.o
#------------------------------------------------------------------------------#
clear-of:
	rm -f $(OF)
#-------------------------------- END OF FILE ---------------------------------#
