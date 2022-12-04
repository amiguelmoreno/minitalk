/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_bzero.c                                         :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: antmoren <antmoren@student.42malaga.com    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/04/23 15:12:55 by antmoren          #+#    #+#             */
/*   Updated: 2022/11/14 20:12:13 by antmoren         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

void	ft_bzero(void *s, size_t n)
{
	ft_memset(s, '\0', n);
}

/* 

#include <string.h>
#include <stdio.h>

int	main(int argc, char **argv)
{
	char	dst1[] = "ABCDEFGHIJ";
	char	dst2[] = "ABCDEFGHIJ";
	int		len = 3;

	if (argc == 1)
	{
		puts("Executing sample tests, as no argument was given");
		puts("");
		printf("dst1 = %s\n", dst1);
		bzero(dst1, len);
		printf("dst1 = %s\n", dst1);
		puts("");
		printf("dst2 = %s\n", dst2);
		ft_bzero(dst2, len);
		printf("dst2 = %s\n", dst2);
	}
	else
	{
		puts(argv[1]);
		//printf("%s\n", ft_strcapitalize(argv[1]));
	}
	return (0);
} */