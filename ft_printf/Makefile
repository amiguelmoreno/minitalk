# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: antmoren <antmoren@student.42malaga.com    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/04/22 10:11:34 by antmoren          #+#    #+#              #
#    Updated: 2022/12/04 22:07:47 by antmoren         ###   ########.fr        #
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
	@echo "ft_printf compiled!"


%.o: %.c
	@echo "Compiling: $<"
	@$(CC) $(CFLAGS) $(INCLUDE) -c $< -o $@

# clean rule
clean: 
	@$(RM) -rf *.o
	@make clean -C $(LIBFT)
	@echo "ft_printf object files cleaned!"

# fclean rule
fclean: clean
	@$(RM) -f $(NAME)
	@$(RM) -f $(LIBFT)/libft.a
	@echo "ft_printf executable files cleaned!"
	@echo "libft executable files cleaned!"

# re rule
re: fclean all
	@echo "Cleaned and rebuilt everything for ft_printf!"

# phony
.PHONY: all clean fclean re