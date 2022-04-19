/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   so_long.c                                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: larstenhagen <larstenhagen@student.42.f    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/04/15 17:18:18 by larstenhage       #+#    #+#             */
/*   Updated: 2022/04/19 14:26:21 by larstenhage      ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "so_long.h"

int main()
{
	void *mlx_ptr;

	mlx_ptr = NULL;
	if(!mlx_init())
		return (-1);
    mlx_new_window(mlx_ptr, 100, 100, "so_long_display");
	return(0);
}
