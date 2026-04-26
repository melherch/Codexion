NAME = codexion

CC = cc 

CFLAGS = -Wall -Wextra -Werror -pthread

CFILES = main.c

OFILES = $(CFILES:.c=.o)

.PHONY: clean

%.o: %.c codexion.h
	$(CC) $(CFLAGS) -c $< -o  $@

all: $(NAME)

$(NAME): $(OFILES)
	$(CC) $^ -o $@
	rm -f $(OFILES)

clean:
	rm -f $(NAME)
	
fclean: clean

re: fclean all