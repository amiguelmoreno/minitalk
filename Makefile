# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: antmoren <antmoren@student.42malaga.com    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/06/15 16:38:41 by antmoren          #+#    #+#              #
#    Updated: 2022/12/14 14:22:47 by antmoren         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME 		= client
SERVER		= server
FT_PRINTF	= ft_printf
INC			= inc
HEADER		= -I inc
CC			= gcc
FLAGS		= -Wall -Werror -Wextra
RM			= rm -f

SRCCL_FILES	=	client.c
SRCSV_FILES	=	server.c

OBJCL 		= 	$(SRCCL_FILES:.c=.o)
OBJSV 		= 	$(SRCSV_FILES:.c=.o)

start:
			@make -C $(FT_PRINTF)
			@cp $(FT_PRINTF)/ft_printf.a .
			@make all

all:		$(NAME) $(SERVER)

$(NAME):	$(OBJCL) 
			@$(CC) $(FLAGS) $(OBJCL) $(HEADER) ft_printf.a -o $(NAME)

$(SERVER):	$(OBJSV) 
			@$(CC) $(FLAGS) $(OBJSV) $(HEADER) ft_printf.a -o $(SERVER)
			@echo "\n 📚  ✅ Server and client generated!"

%.o: %.c 
			@$(CC) $(FLAGS) $(HEADER) -c $< -o $@


clean:
			@$(RM) -rf ./*.o
			@make clean -C $(FT_PRINTF)
			@echo "\n 🗑️  ✅ minitalk executable files removed!"

fclean:		clean
			@$(RM) $(NAME) $(SERVER) $(OBJCL) $(OBJSV)
			@make fclean -C $(FT_PRINTF)
			@$(RM) ft_printf.a
			@find . -name ".DS_Store" -delete
			@echo "\n 🗑️  ✅ All minitalk generated files removed!"

re:			fclean all
			@echo "\n 🔄  ✅ Cleaned and rebuilt everything for minitalk"

.PHONY:		start all clean fclean re bonus 