# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: pkuussaa <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/11/13 16:33:43 by pkuussaa          #+#    #+#              #
#    Updated: 2019/11/26 18:36:43 by pkuussaa         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FLG = -Wall -Wextra -Werror
NAME = fillit
FILE = libft/libft.a get_next_line/get_next_line.c check_valid.c free_memory.c \
		map_manager.c tetri_list.c solver.c main.c

.PHONY: all clean fclean re git gitrm

all: $(NAME)

$(NAME):
	@echo "Compiling...."
	@gcc $(FLG) -I ./fillit.h -o $(NAME) $(FILE)
	@echo "Done."

clean:

fclean: clean
	@echo "Removing executable."
	@/bin/rm -f $(NAME)

gitrm:
	@echo "Removing testfiles."
	@/bin/rm -rf tests

git:
	@git clone https://github.com/AleXwern/fillit-tests.git tests

re: fclean all
