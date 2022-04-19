NAME = so_long
FLAGS = -Wall -Werror -Wextra
MLXFLAG = -lmlx -lXext -lX11
PRINTF = printf/libftprintf.a
MLX = mlx/libmlx.a

SRC = so_long.c \

SRC_O = $(SRC:.c = .o)

all : $(NAME)

$(NAME) : $(SRC_O)
	$(MAKE) -C ./printf
	gcc $(FLAGS) $(SRC_O) $(PRINTF) $(MLX) $(MLXFLAG) -o ${NAME}

clean:
	rm -f $(SRC_O)

fclean: clean
	rm -f $(NAME)

re: fclean all
