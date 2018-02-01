#ifndef FT_STDLIB_H
# define FT_STDLIB_H

# include <sys/types.h>

int		ft_atoi(const char *str);
char	*ft_itoa(int n);
char	*ft_itoa_base(int n, int base);
size_t	ft_numsize(intmax_t n, int base);

#endif
