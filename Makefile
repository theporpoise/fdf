# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mgould <marvin@42.fr>                      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/02/22 11:22:29 by mgould            #+#    #+#              #
#    Updated: 2017/04/26 18:30:14 by mgould           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME1 = myfdf

LIB = ../thelibrary

LIBA = ../thelibrary/libft.a

MLX = ./minilibx_macos

MLXA = ./minilibx_macos/libmlx.a

CFLAGS = -g -Wall -Wextra -Werror -I $(LIB) -I $(MLX)

OBJCS = main.o

all: $(NAME1)

$(NAME1): $(OBJCS) $(LIBA)
	gcc $(CFLAGS) -o $@ $^ $(MLXA) -framework OpenGL -framework AppKit

$(LIBA): force
	$(MAKE) -C $(LIB)
	$(MAKE) -C $(MLX)

force:
	@true

%.o: %.c
	gcc $(CFLAGS) -c -o $@ $<

clean:
	rm -f $(OBJCS)
	cd $(LIB) && make fclean

fclean: clean
	rm -f $(NAME1)

re: fclean all

.PHONY: clean re fclean
