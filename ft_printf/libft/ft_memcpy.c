/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_memcpy.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: antmoren <antmoren@student.42malaga.com    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/04/25 13:06:06 by antmoren          #+#    #+#             */
/*   Updated: 2022/11/14 20:17:32 by antmoren         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

void	*ft_memcpy(void *dest, const void *src, size_t n)
{
	size_t	i;

	i = 0;
	if (!dest && !src)
		return (NULL);
	while (i < n)
	{
		((unsigned char *)dest)[i] = ((unsigned char *)src)[i];
		i++;
	}
	return (dest);
}

/* 
#include <string.h>
#include <stdio.h>

int	main(int argc, char **argv)
{
	char	src[] = "SourceEEEEEEEE";
	char	dst1[] = "ABCDEFGHIJ";
	char	dst2[] = "ABCDEFGHIJ";
	int		len = 10;

	if (argc == 1)
	{
		puts("Executing sample tests, as no argument was given");
		puts("");
		printf("dst1 = %s\n", dst1);
		printf("   memcpy(%s, %s)\n", dst1, src);
		memcpy(dst1, src, len);
		printf("dst1 = %s\n", dst1);
		//
		puts("");
		printf("dst2 = %s\n", dst2);
		printf("ft_memcpy(%s, %s)\n", dst2, src);
		ft_memcpy(dst2, src, len);
		printf("dst2 = %s\n", dst2);
	}
	else
	{
		puts(argv[1]);
		//printf("%s\n", ft_strcapitalize(argv[1]));
	}
	return (0);
} */