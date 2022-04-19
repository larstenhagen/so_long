NAME = so_long
FLAGS = -Wall -Werror -Wextra

SRC = so_long.c \

SRC_O = $(SRC:.c = .o)

all : $(NAME)

$(NAME) : $(SRC_O)
	$(MAKE) -C ./printf
	gcc $(FLAGS) $(SRC_O) printf/libftprintf.a -o ${NAME}

clean:
	rm -f $(SRC_O)

fclean: clean
	rm -f $(NAME)

re: fclean all
