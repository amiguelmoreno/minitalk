/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strchr.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: antmoren <antmoren@student.42malaga.com    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/04/23 11:12:56 by antmoren          #+#    #+#             */
/*   Updated: 2022/11/15 12:02:33 by antmoren         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

char	*ft_strchr(const char *str, int c)
{
	while (*str && *str != (unsigned char)c)
		str++;
	if (*str == (unsigned char)c)
		return ((char *)str);
	return (NULL);
}

/* 
#include <stdio.h>
#include <string.h>

int	main(void)
{
	const char	*str;
	int			c;

	str = "me voy a caer de la mesa";
	c = '\0';
	printf("%s\n", strchr(str, c));
	printf("%s\n", ft_strchr(str, c));
	return (0);
}
 */