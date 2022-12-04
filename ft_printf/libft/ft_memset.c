/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_memset.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: antmoren <antmoren@student.42malaga.com    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/04/25 12:31:31 by antmoren          #+#    #+#             */
/*   Updated: 2022/11/15 01:16:34 by antmoren         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

void	*ft_memset(void *str, int c, size_t len)
{
	size_t	i;

	i = 0;
	while (i < len)
	{
		((unsigned char *)str)[i] = c;
		i++;
	}
	return (str);
}

/* 
#include <stdio.h>
#include <string.h>

int	main(int argc, char **argv)
{
	char	dst1[];
	char	dst2[];
	int		c;
	int		len;

	dst1[] = "ABCDEFGHIJ";
	dst2[] = "ABCDEFGHIJ";
	c = 97;
	len = 3;
	if (argc == 1)
	{
		puts("Executing sample tests, as no argument was given");
		puts("");
		printf("dst1 = %s\n", dst1);
		printf("   memset(%s, %d, %s)\n", dst1, c, (unsigned char *)memset(dst1,
					c, len));
		printf("dst1 = %s\n", dst1);
		puts("");
		printf("dst2 = %s\n", dst2);
		printf("ft_memset(%s, %d, %s)\n", dst2, c,
				(unsigned char *)ft_memset(dst2, c, len));
		printf("dst2 = %s\n", dst2);
	}
	else
	{
		puts(argv[1]);
		//printf("%s\n", ft_strcapitalize(argv[1]));
	}
	return (0);
}
  */