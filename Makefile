CC = clang

CFLAGS = -Wall -Wextra -O2 -g \
  -target bpf \
  -std=c11 \
  -I./ebpf_for_windows/include

TARGET = hello
SRC = hello.c

all: build/$(TARGET).bpf.o

build/$(TARGET).bpf.o: $(SRC)
	@mkdir -p build
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -rf build

.PHONY: all clean
