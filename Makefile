
NAME =		myprogram.a

CC =		gcc
CFLAGS =	-Wall -Wextra -Werror

OBJS_DIR =	objs

SRCS =		main.c \
			fta.c \
			ftb.c

# addprefix obj/ to each file
# eq. src/main.o src/fta.o src/ftb.o
OBJS =		$(addprefix $(OBJS_DIR)/, $(SRCS:.c=.o))

all: myprogram

myprogram: $(OBJS)
	$(CC) $(CFLAGS) $^ -o $@

$(OBJS_DIR)/%.o: %.c | obj
	$(CC) $(CFLAGS) -c $< -o $@

obj:
	mkdir -p $(OBJS_DIR)

clean:
	rm -rf $(OBJS_DIR) myprogram

basename:
	@echo $(basename $(NAME))
	@echo $(addsuffix .z, $(basename $(NAME)))

.PHONY: all obj clean basename
