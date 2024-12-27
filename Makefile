NAME		= get_next_line.a
CC			= cc
CFLAGS		= -Wall -Wextra -Werror
SRCS		= get_next_line.c get_next_line_utils.c get_next_line_bonus.c
OBJ			= $(SRCS:.c=.o)


all: $(NAME)

$(NAME): $(OBJ)
	ar rcs $(NAME) $(OBJ)

clean:
	rm -rf $(OBJ)

fclean: clean
	rm -f $(NAME)

re: fclean all

.PHONY: all clean fclean re