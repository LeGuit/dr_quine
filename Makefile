# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: gwoodwar <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/11/24 11:51:30 by gwoodwar          #+#    #+#              #
#    Updated: 2016/06/22 18:47:21 by gwoodwar         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# For mem : @ before a commande hide the echo of the command

CC =		clang
FLAGS =		-Wall -Werror -Wextra -O2
COLLEEN =	Colleen
GRACE =		Grace
SULLY =		Sully
HELP =		Help
INCLS =		-I./includes -I./libft/includes 
LIBFT = 	-L./libft -lft

SRCS_DIR =	srcs
OBJS_DIR =	objs

LIBS =	libft/libft.a

all: $(COLLEEN) $(GRACE) $(SULLY)

$(LIBS):
	make -C $(dir $@)

$(COLLEEN) $(GRACE) $(SULLY): $(LIBS)
	$(CC) $(FLAGS) -o $@ $@.c $(LIBFT)

colleen:
	$(CC) $(FLAGS) -o $(COLLEEN) $(COLLEEN).c $(LIBFT)

grace:
	$(CC) $(FLAGS) -o $(GRACE) $(GRACE).c $(LIBFT)

sully:
	$(CC) $(FLAGS) -o $(SULLY) $(SULLY).c $(LIBFT)

help:
	$(CC) $(FLAGS) -o $(HELP) $(HELP).c

clean:
	/bin/rm -rf $(COLLEEN).o $(GRACE).o $(SULLY).o

fclean: clean
	/bin/rm -f $(COLLEEN) $(GRACE) $(SULLY)

re: fclean all

.PHONY: re clean fclean all
