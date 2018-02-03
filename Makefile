NAME := libft.a

CC := gcc
CFLAGS += -Wall -Wextra -Werror

SOURCE_DIR := src
BIN_DIR := obj

CTYPE_DIR := ft_ctype
LIST_DIR := ft_list
MATH_DIR := ft_math
STDIO_DIR := ft_stdio
STDLIB_DIR := ft_stdlib
STRING_DIR := ft_string
PRINTF_DIR := ft_stdio/ft_printf

# SOURCE_DIR := $(addprefix $(SOUCE_DIR)/,$(CTYPE_DIR) $(LIST_DIR) $(MATH_DIR) $(STDIO_DIR) $(STDLIB_DIR) $(STRING_DIR) $(PRINTF_DIR))

CTYPE_FILES +=	ft_isalpha	ft_isdigit	ft_isalnum	\
				ft_isascii	ft_isprint	ft_toupper	\
				ft_tolower
CTYPE_FILES := $(addprefix $(CTYPE_DIR)/,$(CTYPE_FILES))
CTYPE_BIN := $(addsuffix .o,$(CTYPE_FILES))

LIST_FILES +=	ft_lstnew		ft_lstdelone	ft_lstdel	\
				ft_lstadd		ft_lstiter		ft_lstmap
LIST_FILES := $(addprefix $(LIST_DIR)/,$(LIST_FILES))
LIST_BIN := $(addsuffix .o,$(LIST_FILES))

MATH_FILES +=	ft_fmod		ft_power		ft_root
MATH_FILES := $(addprefix $(MATH_DIR)/,$(MATH_FILES))
MATH_BIN := $(addsuffix .o,$(MATH_FILES))

STDIO_FILES +=	ft_putchar		ft_putstr		ft_putendl		\
				ft_putnbr		ft_putchar_fd	ft_putstr_fd	\
				ft_putendl_fd	ft_putnbr_fd	get_next_line
STDIO_FILES := $(addprefix $(STDIO_DIR)/,$(STDIO_FILES))
STDIO_BIN := $(addsuffix .o,$(STDIO_FILES))

STDLIB_FILES +=	ft_atoi		ft_itoa		ft_itoa_base
STDLIB_FILES := $(addprefix $(STDLIB_DIR)/,$(STDLIB_FILES))
STDLIB_BIN := $(addsuffix .o,$(STDLIB_FILES))

STRING_FILES +=	ft_memset	ft_bzero	ft_memcpy	\
				ft_memccpy	ft_memmove	ft_memchr	\
				ft_memcmp	ft_memalloc	ft_memdel	\
				ft_strlen	ft_strdup	ft_strsplit	\
				ft_strcpy	ft_strncpy	ft_strcat	\
				ft_strncat	ft_strlcat	ft_strchr	\
				ft_strrchr	ft_strstr	ft_strnstr	\
				ft_strcmp	ft_strncmp	ft_strnew	\
				ft_strdel	ft_strclr	ft_strtrim	\
				ft_striter	ft_striteri	ft_strmap	\
				ft_strmapi	ft_strequ	ft_strnequ	\
				ft_strsub	ft_strjoin	ft_realloc	\
				ft_count_words
STRING_FILES := $(addprefix $(STRING_DIR)/,$(STRING_FILES))
STRING_BIN := $(addsuffix .o,$(STRING_FILES))

OBJ := $(addprefix $(BIN_DIR)/,$(CTYPE_BIN) $(LIST_BIN) $(MATH_BIN) $(STDIO_BIN) $(STDLIB_BIN) $(STRING_BIN) $(PRINTF_BIN))

INC := inc

#fix this to get each directory to work

$(BIN_DIR)/%.o: $(SOURCE_DIR)/%.c
	@$(CC) $(CFLAGS) -I $(INC) -c $^ -o $@
	@/bin/echo -n "===="

.PHONY: clean fclean re

all: $(NAME)

$(NAME): $(OBJ)
	@echo "\n\033[32m[object files created ( ͡° ͜ʖ ͡°)]\033[0m"
	@ar rc $@ $(OBJ)
	@ranlib $@
	@echo "\033[32m[library $(NAME) created ( ͡° ͜ʖ ͡°)]\033[0m"

$(OBJ): | $(BIN_DIR)

$(BIN_DIR):
	@mkdir -p $(addprefix $(BIN_DIR)/,$(CTYPE_DIR) $(LIST_DIR) $(MATH_DIR) $(STDIO_DIR) $(STDLIB_DIR) $(STRING_DIR) $(PRINTF_DIR))


clean:
	@rm -rf $(ODIR)
	@echo "\033[31m[object files deleted (╯°□°）╯︵ ┻━┻ ]\033[0m"

fclean: clean
	@rm -rf $(NAME)
	@echo "\033[31m[executable $(NAME) deleted ᕙ(⇀‸↼‶)ᕗ ]\033[0m"

re: fclean all
