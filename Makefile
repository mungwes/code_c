# _*_ Makefile _*_

# Compiler and compiler flags
CC = gcc
CFLAGS = -Wall -O2

# Target executable name
TARGET = sine

# Source files
SRCS = main.c
# Object files
OBJS = main.o

# Target to build everything
all: $(TARGET)

# Rule to link the object files into the final executable
$(TARGET): $(OBJS) factorial.o sine.o
	$(CC) $(CFLAGS) -o $(TARGET) $(OBJS) factorial.o sine.o

# Compile main.c into main.o
$(OBJS): $(SRCS) factorial.h sine.h
	$(CC) $(CFLAGS) -c $(SRCS)

# Compile factorial.c into factorial.o
factorial.o: factorial.c factorial.h
	$(CC) $(CFLAGS) -c factorial.c

# Compile sine.c into sine.o
sine.o: sine.c sine.h
	$(CC) $(CFLAGS) -c sine.c

# Clean up object files and executable
clean:
	rm -f *.o $(TARGET)
