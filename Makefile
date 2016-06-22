# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: gwoodwar <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/11/24 11:51:30 by gwoodwar          #+#    #+#              #
#    Updated: 2016/06/22 19:50:11 by gwoodwar         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# For mem : @ before a commande hide the echo of the command

CC =		clang
FLAGS =		-Wall -Werror -Wextra -O2
COLLEEN =	Colleen
GRACE =		Grace
SULLY =		Sully
HELP =		Help

all: $(COLLEEN) $(GRACE) $(SULLY)

$(COLLEEN) $(GRACE) $(SULLY): 
	$(CC) $(FLAGS) -o $@ $@.c

colleen:
	$(CC) $(FLAGS) -o $(COLLEEN) $(COLLEEN).c

grace:
	$(CC) $(FLAGS) -o $(GRACE) $(GRACE).c

sully:
	$(CC) $(FLAGS) -o $(SULLY) $(SULLY).c

help:
	$(CC) $(FLAGS) -o $(HELP) $(HELP).c

clean:
	/bin/rm -rf $(COLLEEN).o $(GRACE).o $(SULLY).o

fclean: clean
	/bin/rm -f $(COLLEEN) $(GRACE) $(SULLY)

re: fclean all

.PHONY: re clean fclean all
