# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: antmoren <antmoren@student.42malaga.com    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/06/15 16:38:41 by antmoren          #+#    #+#              #
#    Updated: 2022/12/08 01:49:48 by antmoren         ###   ########.fr        #
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

DEF_COLOR	=	\033[0;39m
ORANGE		=	\033[0;33m
GRAY		=	\033[0;90m
RED			=	\033[0;91m
GREEN		=	\033[1;92m
YELLOW		=	\033[1;93m
BLUE		=	\033[0;94m
MAGENTA		=	\033[0;95m
CYAN		=	\033[0;96m
WHITE		=	\033[0;97m

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
			@echo "$(GREEN)Server and client generated!$(DEF_COLOR)"

%.o: %.c 
			@$(CC) $(FLAGS) $(HEADER) -c $< -o $@


clean:
			@$(RM) -rf *.o
			@make clean -C $(FT_PRINTF)
			@echo "$(GREEN)Object Files Cleaned!$(DEF_COLOR)\n"

fclean:		clean
			@$(RM) $(NAME) $(SERVER) $(OBJCL) $(OBJSV)
			@make fclean -C $(FT_PRINTF)
			@$(RM) ft_printf.a
			@find . -name ".DS_Store" -delete
			@echo "$(GREEN)All Files Cleaned!$(DEF_COLOR)\n"

re:			fclean all
			@echo "$(GREEN)Cleaned and rebuilt everything!$(DEF_COLOR)\n"

.PHONY:		start all clean fclean re bonus 