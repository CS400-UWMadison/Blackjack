#
# A simple makefile for compiling three java classes
#

# define a makefile variable for the java compiler
#
JCC = javac

# define a makefile variable for compilation flags
# the -g flag compiles with debugging information
#
JFLAGS = -g

# typing 'make' will invoke the first target entry in the makefile 
# (the default one in this case)
#
default: Table.class Card.class Player.class

# this target entry builds the Table class
# the Table.class file is dependent on the Table.java file
# and the rule associated with this entry gives the command to create it
#
Table.class: Table.java
        $(JCC) $(JFLAGS) Table.java

Card.class: Card.java
        $(JCC) $(JFLAGS) Card.java

Player.class: Player.java
        $(JCC) $(JFLAGS) Player.java

# To start over from scratch, type 'make clean'.  
# Removes all .class files, so that the next make rebuilds them
#
clean: 
        $(RM) *.class