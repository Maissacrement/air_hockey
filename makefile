#!make

CC		= 	g++

LDFLAGS	=	-Iinclude/

CPFLAGS =	-W -Wall

NAME	= 	air_hockey

SRC 	=	src/main.cpp

OBJS 	= 	$(SRCS:.c=.o)


all: 		$(NAME)

$(NAME):	$(OBJS)
			$(CC) -o $(NAME) $(SRC) $(LDFLAGS) $(CPFLAGS)

clean:
			$(RM) $(OBJS)

fclean: 	clean
			$(RM) $(NAME)

re: 		fclean all

.PHONY: 	all clean fclean re
