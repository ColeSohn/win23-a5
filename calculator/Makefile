# Define compiler
CC=gcc
# Define flags
CFLAGS=-I. -Wall

# Define source files
SOURCES=addition.c division.c main.c multiplication.c subtraction.c
# Define object files
OBJECTS=addition.o division.o main.o multiplication.o subtraction.o
# Define executable name
EXECUTABLE=calculator

# Default target
all: $(EXECUTABLE)

# Rule for compiling source files into object files
%.o: %.c operations.h
	$(CC) -c -o $@ $< $(CFLAGS)

# Rule for making the executable
$(EXECUTABLE): $(OBJECTS)
	$(CC) -o $@ $^

# Clean target
clean:
	rm -f $(OBJECTS) $(EXECUTABLE)

# Make the 'all' target the default
.PHONY: all clean