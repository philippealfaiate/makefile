
NAME =		myprogram.a

CC =		gcc
CFLAGS =	-Wall -Wextra -Werror

OBJS_DIR =	objs

BIN_DIR =	bin

SRCS =		msg.c

# addprefix obj/ to each file
# eq. src/main.o src/fta.o src/ftb.o
OBJS =		$(addprefix $(OBJS_DIR)/, $(SRCS:.c=.o))

all: myprogram

myprogram: $(OBJS)
	$(CC) $(CFLAGS) $(OFLAGS) $^ -c

$(OBJS_DIR)/%.o: %.c | obj
	$(CC) $(CFLAGS) -c $< -o $@

obj:
	mkdir -p $(OBJS_DIR) $(BIN_DIR)

clean:
	rm -rf $(OBJS_DIR) myprogram

.PHONY: all obj clean basename