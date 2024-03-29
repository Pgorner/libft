#	███╗   ███╗ █████╗ ██╗  ██╗███████╗███████╗██╗██╗     ███████╗
#	████╗ ████║██╔══██╗██║ ██╔╝██╔════╝██╔════╝██║██║     ██╔════╝
#	██╔████╔██║███████║█████╔╝ █████╗  █████╗  ██║██║     █████╗
#	██║╚██╔╝██║██╔══██║██╔═██╗ ██╔══╝  ██╔══╝  ██║██║     ██╔══╝
#	██║ ╚═╝ ██║██║  ██║██║  ██╗███████╗██║     ██║███████╗███████╗
#	╚═╝     ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝╚══════╝╚═╝     ╚═╝╚══════╝╚══════╝


NAME = libft.a

CC = cc
CFLAGS = -Wall -Werror -Wextra
AR = ar rcs
RM = rm -f

ifdef WITH_BONUS
OBJ_FILES = $(OBJS) $(OBJS_B)
else
OBJ_FILES = $(OBJS)
endif


SRC = 	ft_memset.c \
		ft_bzero.c \
		ft_memcpy.c \
		ft_memmove.c \
		ft_memchr.c \
		ft_memcmp.c \
		ft_strlen.c \
		ft_strlcpy.c \
		ft_strlcat.c \
		ft_strchr.c \
		ft_strrchr.c \
		ft_strnstr.c \
		ft_striteri.c \
		ft_strncmp.c \
		ft_atoi.c \
		ft_isalpha.c \
		ft_isdigit.c \
		ft_isalnum.c \
		ft_isascii.c \
		ft_isprint.c \
		ft_toupper.c \
		ft_tolower.c \
		ft_calloc.c \
		ft_strdup.c \
		ft_substr.c \
		ft_strjoin.c \
		ft_strtrim.c \
		ft_split.c \
		ft_itoa.c \
		ft_strmapi.c \
		ft_putchar_fd.c \
		ft_putstr_fd.c \
		ft_putendl_fd.c \
		ft_putnbr_fd.c \
		gnl/get_next_line.c \
		gnl/get_next_line_utils.c \
		printf/ft_checkletter.c \
		printf/ft_flag.c \
		printf/ft_hex.c \
		printf/ft_nbr.c \
		printf/ft_pointer.c \
		printf/ft_printf.c \
		printf/ft_printstr.c \
		printf/ft_putchar.c \
		printf/ft_uns.c \

SRC_B =	ft_lstnew.c \
		ft_lstadd_front.c \
		ft_lstsize.c \
		ft_lstlast.c \
		ft_lstadd_back.c \
		ft_lstdelone.c \
		ft_lstclear.c \
		ft_lstiter.c \
		ft_lstmap.c \

OBJS =		$(SRC:.c=.o)
OBJS_B =	$(SRC_B:.c=.o)

$(NAME):	$(OBJ_FILES)
			$(AR) $(NAME) $(OBJS)

all :		$(NAME)

clean :
			$(RM) $(OBJS) $(OBJS_B)

fclean :	clean
			$(RM) $(NAME)

re :		fclean
			$(MAKE) all

bonus:$(OBJ_FILES)
	@$(MAKE) WITH_BONUS=1 all


.PHONY: all clean fclean re

