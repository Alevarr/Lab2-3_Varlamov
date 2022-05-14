CC = gcc
SRCS = main.cpp menu.cpp hanoi.cpp Sequence.hpp ArraySequence.hpp ListSequence.hpp DynamicArray.hpp LinkedList.hpp Stack.hpp unit_tests_ArraySequence.hpp unit_tests_DynamicArray.hpp unit_tests_LinkedList.hpp unit_tests_ListSequence.hpp unit_tests_Stack.hpp Complex.hpp Student.hpp Teacher.hpp
CFLAGS = -g -Wall
LDFLAGS = -lstdc++
OBJS = $(SRCS: .cpp = .o)
EXE = lab2

all: $(SRCS) $(EXE)

$(EXE): $(OBJS)
	clear
	$(CC) $(OBJS) -o $@ $(LDFLAGS)
.cpp.o:
	$(CC) $(CFLAGS) $< -o $@
clean:
	rm -rf $(OBJS) $(EXE)