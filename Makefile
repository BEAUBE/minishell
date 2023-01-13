# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ajoliet <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/01/13 09:21:35 by ajoliet           #+#    #+#              #
#    Updated: 2023/01/13 09:38:40 by ajoliet          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME=minishell
CC=clang
CFLAGS=-Wall -Wextra -Werror -g
SRC_C=	main.c
OBJ_C=$(SRC_C:%.c=%.o)

$(NAME):	$(OBJ_C)
	$(CC) $(CFLAGS) $(OBJ_C) -o $(NAME)

all:	$(NAME)

%.o:	%.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm $(OBJ_C)

fclean:	clean
	rm $(NAME)

re:	fclean $(NAME)
