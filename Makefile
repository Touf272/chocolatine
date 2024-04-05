##
## EPITECH PROJECT, 2024
## Makefile
## File description:
## Makefile
##

NAME = a.out

SRCS = main.c

OBJS = $(SRCS:.c=.o)

CFLAGS += -pedantic

CFLAGS += -fanalyzer

CFLAGS += -Wall
CFLAGS += -Wextra

CC = gcc

LS = ls

all: $(NAME)

$(NAME): $(OBJS)
	$(CC) -o $(NAME) $(OBJS) $(CFLAGS)


clean:
	rm -f $(OBJS)

fclean: clean
	rm -f $(NAME)

tests_run:
	$(LS)

re: fclean all
