/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_isalnum.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: antmoren <antmoren@student.42malaga.com    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/04/19 14:58:49 by antmoren          #+#    #+#             */
/*   Updated: 2022/11/15 01:16:49 by antmoren         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

int	ft_isalnum(int c)
{
	return ((c >= '0' && c <= '9') || (c >= 'A' && c <= 'Z') || (c >= 'a'
			&& c <= 'z'));
}

/* #include <ctype.h>
#include <stdio.h>

int	main(void)
{
	int	c;

	c = '+';
	printf("%d\n", ft_isalnum(c));
	printf("%d\n", ft_isalnum(c));
} */
