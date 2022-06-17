# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: antmoren <antmoren@student.42malaga.com    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/06/15 16:38:41 by antmoren          #+#    #+#              #
#    Updated: 2022/06/17 10:03:18 by antmoren         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FLAGS = -Wall -Werror -Wextra
CC = gcc

SERVER = server
CLIENT = client

PRINTF = ft_printf
FLAGS = -Wall -Wextra -Werror -I $(PRINTF)/includes -L $(PRINTF) -lftprintf

all:
	@make -s -C $(PRINTF)
	@gcc $(FLAGS) server.c -o $(SERVER)
	@gcc $(FLAGS) client.c -o $(CLIENT)
	@echo "Server And Client files have been generated!"

clean:
	@make clean -s -C $(PRINTF)

fclean: clean
	@make fclean -s -C $(PRINTF)
	@rm -f $(SERVER) $(CLIENT)
	@echo "Files removed sucesfully"

re: fclean all