/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: mgould <marvin@42.fr>                      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2017/04/26 17:43:04 by mgould            #+#    #+#             */
/*   Updated: 2017/04/26 18:43:51 by mgould           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "fdf.h"

int main(void)
{
	void *mlx;
	void *window;
	int i;

	i = 0;
	mlx = mlx_init();
	window = mlx_new_window(mlx, 1000, 1000, "Title");

	mlx_clear_window(mlx, window);
	while (i < 1000)
	{
		mlx_pixel_put(mlx, window, i, 50, 0x55FF00);
		i++;
	}

	mlx_loop(mlx);
	return (0);
}
