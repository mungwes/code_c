# Compiler and compiler flags
CC = gcc
CFLAGS = -Wall -O2

# Target executable names
TARGETS = sin cos absolute_value

# Source files for each program
SINE_SRCS = sine/main.c sine/sine.c
COSINE_SRCS = cosine/main.c cosine/cosine.c
ABSVAL_SRCS = abs_value/main.c abs_value/abs_value.c abs_value/abs_value_int.c

# Object files for each program
SINE_OBJS = sine/main.o sine/sine.o
COSINE_OBJS = cosine/main.o cosine/cosine.o
ABSVAL_OBJS = abs_value/main.o abs_value/abs_value.o abs_value/abs_value_int.o

# Build all targets
all: sin cos absolute_value

# Build the 'sin' executable
sin: $(SINE_OBJS)
	$(CC) $(CFLAGS) -o sin $(SINE_OBJS)

# Build the 'cos' executable
cos: $(COSINE_OBJS)
	$(CC) $(CFLAGS) -o cos $(COSINE_OBJS)

# Build the 'absolute_value' executable
absolute_value: $(ABSVAL_OBJS)
	$(CC) $(CFLAGS) -o absolute_value $(ABSVAL_OBJS)

# Compile object files
sine/main.o: sine/main.c sine/sine.h
	$(CC) $(CFLAGS) -c sine/main.c -o sine/main.o

sine/sine.o: sine/sine.c sine/sine.h
	$(CC) $(CFLAGS) -c sine/sine.c -o sine/sine.o

cosine/main.o: cosine/main.c cosine/cosine.h
	$(CC) $(CFLAGS) -c cosine/main.c -o cosine/main.o

cosine/cosine.o: cosine/cosine.c cosine/cosine.h
	$(CC) $(CFLAGS) -c cosine/cosine.c -o cosine/cosine.o

abs_value/main.o: abs_value/main.c abs_value/abs_value.h
	$(CC) $(CFLAGS) -c abs_value/main.c -o abs_value/main.o

abs_value/abs_value.o: abs_value/abs_value.c abs_value/abs_value.h
	$(CC) $(CFLAGS) -c abs_value/abs_value.c -o abs_value/abs_value.o

abs_value/abs_value_int.o: abs_value/abs_value_int.c abs_value/abs_value_int.h
	$(CC) $(CFLAGS) -c abs_value/abs_value_int.c -o abs_value/abs_value_int.o

# Clean up object files and executables
clean:
	rm -f $(SINE_OBJS) $(COSINE_OBJS) $(ABSVAL_OBJS) sin.exe cos.exe absolute_value.exe
