# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: antmoren <antmoren@student.42malaga.com    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/06/15 16:38:41 by antmoren          #+#    #+#              #
#    Updated: 2022/12/05 16:42:24 by antmoren         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

CLIENT 				= client
SERVER				= server
CLIENT_BONUS		= client_bonus
SERVER_BONUS		= server_bonus
FT_PRINTF			= ft_printf
INC					= inc
HEADER				= -I inc
CC					= gcc
FLAGS				= -Wall -Werror -Wextra
RM					= rm -f

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

SRCCL_FILES	=	client
SRCSV_FILES	=	server
SRCBC_FILES	=	client_bonus
SRCBS_FILES	=	server_bonus

SRCCL 		= 	$(addsuffix .c, $(SRCCL_FILES))
OBJCL 		= 	$(addsuffix .o, $(SRCCL_FILES))

SRCSV 		= 	$(addsuffix .c, $(SRCSV_FILES))
OBJSV 		= 	$(addsuffix .o, $(SRCSV_FILES))

#SRCBC 		= 	$(addprefix $(SRC_DIR), $(addsuffix .c, $(SRCBC_FILES)))
#OBJBC 		= 	$(addprefix $(OBJ_DIR), $(addsuffix .o, $(SRCBC_FILES)))

#SRCBS 		= 	$(addprefix $(SRC_DIR), $(addsuffix .c, $(SRCBS_FILES)))
#OBJBS 		= 	$(addprefix $(OBJ_DIR), $(addsuffix .o, $(SRCBS_FILES)))

start:
			@make -C $(FT_PRINTF)
			@cp $(FT_PRINTF)/ft_printf.a .
			@make all

all:		$(CLIENT) $(SERVER)

$(CLIENT):	$(OBJCL) 
			@$(CC) $(FLAGS) $(OBJCL) $(HEADER) ft_printf.a -o $(CLIENT)

$(SERVER):	$(OBJSV) 
			@$(CC) $(FLAGS) $(OBJSV) $(HEADER) ft_printf.a -o $(SERVER)
			@echo "$(GREEN) Success!$(DEF_COLOR)"

#%.o: %.c 
#			@echo "$(ORANGE)=$(DEF_COLOR)"
#			@$(CC) $(FLAGS) $(HEADER) -c $< -o $@

#bonus:
#			@make -C $(FT_PRINTF)
#			@cp $(FT_PRINTF)/ft_printf.a .
#			@echo "$(YELLOW)[Dependencies]:\t$(DEF_COLOR)"
#			@echo "$(RED)[$(DEF_COLOR)"
#			@make allbonus

#allbonus:		$(CLIENT_BONUS) $(SERVER_BONUS)

#$(CLIENT_BONUS):	$(OBJBC) 
#			@$(CC) $(FLAGS) $(OBJBC) $(HEADER) ft_printf.a -o $(CLIENT_BONUS)
#
#$(SERVER_BONUS):	$(OBJBS) 
#			@echo "$(RED)]$(DEF_COLOR)"
#			@echo "$(GREEN) => 100%$(DEF_COLOR)\n"
#			@echo "$(YELLOW)[minitalk_bonus]:\t$(DEF_COLOR)"
#			@$(CC) $(FLAGS) $(OBJBS) $(HEADER) ft_printf.a -o $(SERVER_BONUS)
#			@echo "$(GREEN) => Success!$(DEF_COLOR)"

clean:
			@$(RM) -r $(OBJ_DIR)
			@make clean -C $(FT_PRINTF)
			@echo "$(BLUE)[minitalk]:\tobject files$(DEF_COLOR)$(GREEN)  => Cleaned!$(DEF_COLOR)\n"

fclean:		clean
			@$(RM) $(CLIENT) $(SERVER) $(CLIENT_BONUS) $(SERVER_BONUS)
			@$(RM) $(FT_PRINTF)/ft_printf.a
			@$(RM) ft_printf.a
			@find . -name ".DS_Store" -delete
			@echo "$(GREEN) All Files Cleaned!$(DEF_COLOR)\n"

re:			fclean all
			@echo "$(GREEN) Cleaned and rebuilt everything!$(DEF_COLOR)\n"

.PHONY:		start all clean fclean re bonus 