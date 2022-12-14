# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: antmoren <antmoren@student.42malaga.com    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/04/22 10:11:34 by antmoren          #+#    #+#              #
#    Updated: 2022/12/14 14:15:22 by antmoren         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# Name of the library
NAME = ft_printf.a


# Flags
CC 		= gcc 
INC 	= include
LIBFT	= Libft
CFLAGS 	= -Wall -Wextra -Werror
AR 		= ar rcs

# Source files
SRC 	= 	ft_print_hex.c 		\
			ft_printf.c			\
			ft_printf_utils.c 	\
			ft_print_ptr.c		\
 			ft_print_unsigned.c	\

# Objects
OBJ = $(SRC:.c=.o)


# all rule
all: $(NAME)

# Compiling command
$(NAME): $(OBJ)
	@make bonus -C $(LIBFT)
	@cp libft/libft.a .
	@mv libft.a $(NAME)
	@$(AR) $(NAME) $(OBJ)
	@echo "\n 📚  ✅ ft_printf compiled!"


%.o: %.c
	@$(CC) $(CFLAGS) $(INCLUDE) -c $< -o $@

# clean rule
clean: 
	@$(RM) ./*.o
	@make clean -C $(LIBFT)
	@echo "\n 🗑️  ✅ ft_printf executable files removed!"

# fclean rule
fclean: clean
	@$(RM) $(NAME)
	@make fclean -C $(LIBFT)
	@echo "\n 🗑️  ✅ All ft_printf generated files removed!"

# re rule
re: fclean all
	@echo "\n 🔄  ✅ Cleaned and rebuilt everything for ft_printf"

# phony
.PHONY: all clean fclean re