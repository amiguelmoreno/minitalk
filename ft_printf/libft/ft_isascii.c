/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_isascii.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: antmoren <antmoren@student.42malaga.com    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/04/19 14:58:49 by antmoren          #+#    #+#             */
/*   Updated: 2022/11/15 01:15:59 by antmoren         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

// "an integer digit preceded by 0 is interpreted as an octal number"
// 		0 = NULL
//		0177 = Delete (in octal)

int	ft_isascii(int c)
{
	return (c >= 0 && c <= 0177);
}

/* #include <ctype.h>
#include <stdio.h>

int	main(void)
{
	char	c;

	c = '>';
	printf("%d\n", ft_isascii(c));
	printf("%d\n", isascii(c));
} */