# The following lines are required because standard make does not
# recognize the Objective-C .m suffix.

.SUFFIXES: .o .m
.m.o:
	$(CC) -c $(CFLAGS) $< 

# Macros
CC = clang
FRAMEWORKS = -framework Foundation
SRC=smallworld.m Person.m World.m
OBJ=smallworld.o Person.o World.o

hist: $(OBJ)
	$(CC) $(CFLAGS) -o smallworld $(OBJ) $(FRAMEWORKS)
