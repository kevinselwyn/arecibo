NAME    := arecibo
BIN_DIR := /usr/local/bin

all: build

build: $(NAME).c
	gcc -Wall -Wextra -o $(NAME) $<

test: build
	./$(NAME)

install: build
	install -m 0755 $(NAME) $(BIN_DIR)

uninstall:
	rm -f $(BIN_DIR)/$(NAME)

clean:
	rm -f $(NAME)