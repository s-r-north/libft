#ifndef FT_STDIO_H
# define FT_STDIO_H

# define BUFF_SIZE 128
# define MAX_FD 256

# include <unistd.h>
# include <stdarg.h>

void	ft_putchar(char c);
void	ft_putstr(const char *s);
void	ft_putendl(const char *s);
void	ft_putnbr(int n);
void	ft_putchar_fd(char c, int fd);
void	ft_putstr_fd(const char *s, int fd);
void	ft_putendl_fd(const char *s, int fd);
void	ft_putnbr_fd(int n, int fd);

int		get_next_line(const int fd, char **line);

int		ft_printf(const char *fmt, ...);
int		ft_asprintf(char **strp, const char *fmt, ...);
int		ft_vasprintf(char **strp, const char *fmt, va_list ap);

#endif
