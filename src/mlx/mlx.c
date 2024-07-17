/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   mlx.c                                              :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: pollivie <pollivie.student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/07/17 06:48:09 by pollivie          #+#    #+#             */
/*   Updated: 2024/07/17 06:48:09 by pollivie         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "mlx.h"
#include "mlx_int.h"

void *wrap_mlx_init(void)
{
	return mlx_init();
}

void *wrap_mlx_new_window(void *const mlx_ptr, const int32_t size_x, const int32_t size_y, char *const title)
{
	return (mlx_new_window(mlx_ptr, size_x, size_y, title));
}

int32_t wrap_mlx_clear_window(void *const mlx_ptr, void *const win_ptr)
{
	return (mlx_clear_window(mlx_ptr, win_ptr));
}

int32_t wrap_mlx_pixel_put(void *const mlx_ptr, void *const win_ptr, const int32_t x, const int32_t y, const int32_t color)
{
	return (mlx_pixel_put(mlx_ptr, win_ptr, x, y, color));
}

char *wrap_mlx_get_data_addr(void *const img_ptr, int32_t *const bits_per_pixel, int32_t *const size_line, int32_t *const endian)
{
	return (mlx_get_data_addr(img_ptr, bits_per_pixel, size_line, endian));
}

int32_t wrap_mlx_put_image_to_window(void *const mlx_ptr, void *const win_ptr, void *const img_ptr, const int32_t x, const int32_t y)
{
	return (mlx_put_image_to_window(mlx_ptr, win_ptr, img_ptr, x, y));
}

int32_t wrap_mlx_get_color_value(void *const mlx_ptr, const int32_t color)
{
	return (mlx_get_color_value(mlx_ptr, color));
}

int32_t wrap_mlx_mouse_hook_2(void *const win_ptr, int32_t (*function_ptr)(int32_t keycode, void *const arg), void *const param)
{
	return (mlx_mouse_hook(win_ptr, function_ptr, param));
}

int32_t wrap_mlx_mouse_hook_1(void *const win_ptr, int32_t (*function_ptr)(void *const arg), void *const param)
{
	return (mlx_mouse_hook(win_ptr, function_ptr, param));
}

int32_t wrap_mlx_key_hook_2(void *const win_ptr, int32_t (*function_ptr)(int32_t keycode, void *const arg), void *const param)
{
	return (mlx_key_hook(win_ptr, function_ptr, param));
}

int32_t wrap_mlx_key_hook_1(void *const win_ptr, int32_t (*function_ptr)(void *const arg), void *const param)
{
	return (mlx_key_hook(win_ptr, function_ptr, param));
}

int32_t wrap_mlx_expose_hook_2(void *const win_ptr, int32_t (*function_ptr)(int32_t exposecode, void *const arg), void *const param)
{
	return (mlx_expose_hook(win_ptr, function_ptr, param));
}

int32_t wrap_mlx_expose_hook_1(void *const win_ptr, int32_t (*function_ptr)(void *const arg), void *const param)
{
	return (mlx_expose_hook(win_ptr, function_ptr, param));
}

int32_t wrap_mlx_loop_hook_2(void *const win_ptr, int32_t (*function_ptr)(int32_t loopcode, void *const arg), void *const param)
{
	return (mlx_loop_hook(win_ptr, function_ptr, param));
}

int32_t wrap_mlx_loop_hook_1(void *const win_ptr, int32_t (*function_ptr)(void *const arg), void *const param)
{
	return (mlx_loop_hook(win_ptr, function_ptr, param));
}

int32_t wrap_mlx_loop(void *const mlx_ptr)
{
	return (mlx_loop(mlx_ptr));
}

int32_t wrap_mlx_loop_end(void *const mlx_ptr)
{
	return (mlx_loop_end(mlx_ptr));
}

int32_t wrap_mlx_string_put(void *const mlx_ptr, void *const win_ptr, const int32_t x, const int32_t y, const int32_t color, char *const string)
{
	return (mlx_string_put(mlx_ptr, win_ptr, x, y, color, string));
}

void wrap_mlx_set_font(void *const mlx_ptr, void *const win_ptr, char *const name)
{
	return (mlx_set_font(mlx_ptr, win_ptr, name));
}

void *wrap_mlx_xpm_to_image(void *const mlx_ptr, char **xpm_data, int32_t *const width, int32_t *const height)
{
	return (wrap_mlx_xpm_to_image(mlx_ptr, xpm_data, width, height));
}

void *wrap_mlx_xpm_file_to_image(void *const mlx_ptr, char *const filename, int32_t *const width, int32_t *const height)
{
	return (mlx_xpm_file_to_image(mlx_ptr, filename, width, height));
}

int32_t wrap_mlx_destroy_experimental(void **const mlx_ptr, void **const win_ptr, void **const img_ptr, char **img_data)
{
	if (!mlx_ptr || !*mlx_ptr)
		return (-1);
	mlx_destroy_image(*mlx_ptr, *img_ptr);
	mlx_destroy_window(*mlx_ptr, *win_ptr);
	mlx_destroy_display(*mlx_ptr);
	free(*img_data);
	free(*mlx_ptr);
	*mlx_ptr = NULL;
	*win_ptr = NULL;
	*img_ptr = NULL;
	*img_data = NULL;
	return (0);
}

int32_t wrap_mlx_destroy_window(void *const mlx_ptr, void *const win_ptr)
{
	return (mlx_destroy_window(mlx_ptr, win_ptr));
}

int32_t wrap_mlx_destroy_image(void *const mlx_ptr, void *const img_ptr)
{
	return (mlx_destroy_image(mlx_ptr, img_ptr));
}

int32_t wrap_mlx_destroy_display(void *const mlx_ptr)
{
	return (mlx_destroy_display(mlx_ptr));
}

int32_t wrap_mlx_hook_1(void *const win_ptr, int32_t x_event, int32_t x_mask, int32_t (*function_pointer)(void *const param), void *const param)
{
	return (mlx_hook(win_ptr, x_event, x_mask, function_pointer, param));
}

int32_t wrap_mlx_hook_2(void *const win_ptr, int32_t x_event, int32_t x_mask, int32_t (*function_pointer)(int32_t keycode, void *const param), void *const param)
{
	return (mlx_hook(win_ptr, x_event, x_mask, function_pointer, param));
}

int32_t wrap_mlx_do_key_autorepeatoff(void *const mlx_ptr)
{
	return (mlx_do_key_autorepeatoff(mlx_ptr));
}

int32_t wrap_mlx_do_key_autorepeaton(void *const mlx_ptr)
{
	return (mlx_do_key_autorepeaton(mlx_ptr));
}

int32_t wrap_mlx_do_sync(void *const mlx_ptr)
{
	return (mlx_do_sync(mlx_ptr));
}

int32_t wrap_mlx_mouse_get_pos(void *const mlx_ptr, void *const win_ptr, int32_t *const x, int32_t *const y)
{
	return (mlx_mouse_get_pos(mlx_ptr, win_ptr, x, y));
}

int32_t wrap_mlx_mouse_move(void *const mlx_ptr, void *const win_ptr, const int32_t x, const int32_t y)
{
	return (mlx_mouse_move(mlx_ptr, win_ptr, x, y));
}

int32_t wrap_mlx_mouse_hide(void *const mlx_ptr, void *const win_ptr)
{
	return (mlx_mouse_hide(mlx_ptr, win_ptr));
}

int32_t wrap_mlx_mouse_show(void *const mlx_ptr, void *const win_ptr)
{
	return (mlx_mouse_show(mlx_ptr, win_ptr));
}

int32_t wrap_mlx_get_screen_size(void *const mlx_ptr, int32_t *const size_x, int32_t *const size_y)
{
	return (mlx_get_screen_size(mlx_ptr, size_x, size_y));
}
