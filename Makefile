# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: eros-gir <eros-gir@student.42barcel>       +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/01/10 12:00:26 by eros-gir          #+#    #+#              #
#    Updated: 2023/10/21 16:23:17 by eros-gir         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a

SRC = ft_isdigit.c ft_memset.c ft_strdup.c ft_strncmp.c ft_atoi.c \
ft_isprint.c ft_putchar_fd.c ft_striteri.c ft_strnstr.c ft_bzero.c \
ft_itoa.c ft_putendl_fd.c ft_strjoin.c ft_strrchr.c ft_calloc.c \
ft_memchr.c ft_putnbr_fd.c ft_strlcat.c ft_strtrim.c ft_isalnum.c \
ft_memcmp.c ft_putstr_fd.c ft_strlcpy.c ft_substr.c ft_isalpha.c \
ft_memcpy.c ft_split.c ft_strlen.c ft_tolower.c ft_isascii.c \
ft_memmove.c ft_strchr.c ft_strmapi.c ft_toupper.c ft_joinloc.c

SRCB = ft_lstlast.c	ft_lstmap.c ft_lstnew.c	ft_lstsize.c  ft_lstadd_back.c \
ft_lstadd_front.c ft_lstclear.c ft_lstdelone.c ft_lstiter.c

OBJ = $(SRC:.c=.o)
OBJB = $(SRCB:.c=.o)

HDRS = libft.h

all: $(NAME)

$(NAME): $(OBJ) $(HDRS)
	ar rc $(NAME) $(OBJ)
clean:
	/bin/rm -f $(OBJ)
	/bin/rm -f $(OBJB)

fclean: clean
	/bin/rm -f $(NAME)

bonus: $(HDRS) $(OBJ) $(OBJB)
	ar rc $(NAME) $(OBJ) $(OBJB)

re: fclean all