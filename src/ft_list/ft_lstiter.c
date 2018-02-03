/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_lstiter.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: snorth <marvin@42.fr>                      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2017/03/09 19:53:40 by snorth            #+#    #+#             */
/*   Updated: 2017/03/09 22:55:28 by snorth           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "ft_list.h"

void	ft_lstiter(t_list *lst, void (*f)(t_list *elem))
{
	if (!f)
		return ;
	while (lst != NULL)
	{
		f(lst);
		lst = lst->next
	}
	// if (lst == NULL)
	// 	return ;
	// if (f)
	// 	f(lst);
	// if ((lst = lst->next))
	// 	ft_lstiter(lst, f);
}
