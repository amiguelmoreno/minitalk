/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_memchr.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: antmoren <antmoren@student.42malaga.com    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/04/25 13:57:13 by antmoren          #+#    #+#             */
/*   Updated: 2022/11/18 00:06:12 by antmoren         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

void	*ft_memchr(const void *s, int c, size_t n)
{
	size_t	i;

	i = 0;
	while (i < n)
	{
		if (*(unsigned char *)&s[i] == (unsigned char)c)
			return ((void *)&s[i]);
		i++;
	}
	return (NULL);
}
/* 
#include <stdio.h>
#include <string.h>
int	main(void)
{
	const void	*str;
	int			c;

	str = "me voy a caer de la mesa";
	c = 'd';
	printf("%p\n", memchr(str, c, 17));
	printf("%p\n", ft_memchr(str, c, 17));
	return (0);
}
 */