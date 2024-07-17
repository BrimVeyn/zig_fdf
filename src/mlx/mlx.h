/*
** mlx.h for MinilibX in 
** 
** Made by Charlie Root
** Login   <ol@epitech.net>
** 
** Started on  Mon Jul 31 16:37:50 2000 Charlie Root
** Last update Tue May 15 16:23:28 2007 Olivier Crouzet
*/

/*
**   MinilibX -  Please report bugs
*/


/*
** FR msg - FR msg - FR msg
**
** La MinilibX utilise 2 librairies supplementaires qu'il
**      est necessaire de rajouter a la compilation :
**   -lmlx -lXext -lX11
**
** La MinilibX permet le chargement des images de type Xpm.
** Notez que cette implementation est incomplete.
** Merci de communiquer tout probleme de chargement d'image
** de ce type.
*/


#ifndef MLX_H

#define	MLX_H

#include <stdint.h>

void	*mlx_init();
/*
**  needed before everything else.
**  return (void *)0 if failed
*/


/*
** Basic actions
*/

void	*mlx_new_window(void *mlx_ptr, int size_x, int size_y, char *title);
/*
**  return void *0 if failed
*/
int	mlx_clear_window(void *mlx_ptr, void *win_ptr);
int	mlx_pixel_put(void *mlx_ptr, void *win_ptr, int x, int y, int color);
/*
**  origin for x & y is top left corner of the window
**  y down is positive
**  color is 0x00RRGGBB
*/


/*
** Image stuff
*/

void	*mlx_new_image(void *mlx_ptr,int width,int height);
/*
**  return void *0 if failed
**  obsolete : image2 data is stored using bit planes
**  void	*mlx_new_image2(void *mlx_ptr,int width,int height);
*/
char	*mlx_get_data_addr(void *img_ptr, int *bits_per_pixel,
			   int *size_line, int *endian);
/*
**  endian : 0 = sever X is little endian, 1 = big endian
**  for mlx_new_image2, 2nd arg of mlx_get_data_addr is number_of_planes
*/
int	mlx_put_image_to_window(void *mlx_ptr, void *win_ptr, void *img_ptr,
				int x, int y);
int	mlx_get_color_value(void *mlx_ptr, int color);


/*
** dealing with Events
*/

int	mlx_mouse_hook (void *win_ptr, int (*funct_ptr)(), void *param);
int	mlx_key_hook (void *win_ptr, int (*funct_ptr)(), void *param);
int	mlx_expose_hook (void *win_ptr, int (*funct_ptr)(), void *param);

int	mlx_loop_hook (void *mlx_ptr, int (*funct_ptr)(), void *param);
int	mlx_loop (void *mlx_ptr);
int mlx_loop_end (void *mlx_ptr);

/*
**  hook funct are called as follow :
**
**   expose_hook(void *param);
**   key_hook(int keycode, void *param);
**   mouse_hook(int button, int x,int y, void *param);
**   loop_hook(void *param);
**
*/


/*
**  Usually asked...
*/

int	mlx_string_put(void *mlx_ptr, void *win_ptr, int x, int y, int color,
		       char *string);
void	mlx_set_font(void *mlx_ptr, void *win_ptr, char *name);
void	*mlx_xpm_to_image(void *mlx_ptr, char **xpm_data,
			  int *width, int *height);
void	*mlx_xpm_file_to_image(void *mlx_ptr, char *filename,
			       int *width, int *height);
int	mlx_destroy_window(void *mlx_ptr, void *win_ptr);

int	mlx_destroy_image(void *mlx_ptr, void *img_ptr);

int	mlx_destroy_display(void *mlx_ptr);

/*
**  generic hook system for all events, and minilibX functions that
**    can be hooked. Some macro and defines from X11/X.h are needed here.
*/

int	mlx_hook(void *win_ptr, int x_event, int x_mask,
                 int (*funct)(), void *param);

int	mlx_do_key_autorepeatoff(void *mlx_ptr);
int	mlx_do_key_autorepeaton(void *mlx_ptr);
int	mlx_do_sync(void *mlx_ptr);

int	mlx_mouse_get_pos(void *mlx_ptr, void *win_ptr, int *x, int *y);
int	mlx_mouse_move(void *mlx_ptr, void *win_ptr, int x, int y);
int	mlx_mouse_hide(void *mlx_ptr, void *win_ptr);
int	mlx_mouse_show(void *mlx_ptr, void *win_ptr);

int	mlx_get_screen_size(void *mlx_ptr, int *sizex, int *sizey);


/*
MLX WRAPPER
*/

int32_t wrap_mlx_get_screen_size(void *const mlx_ptr, int32_t *const size_x, int32_t *const size_y);
int32_t wrap_mlx_mouse_show(void *const mlx_ptr, void *const win_ptr);
int32_t wrap_mlx_mouse_hide(void *const mlx_ptr, void *const win_ptr);
int32_t wrap_mlx_mouse_move(void *const mlx_ptr, void *const win_ptr, const int32_t x, const int32_t y);
int32_t wrap_mlx_mouse_get_pos(void *const mlx_ptr, void *const win_ptr, int32_t *const x, int32_t *const y);
int32_t wrap_mlx_do_sync(void *const mlx_ptr);
int32_t wrap_mlx_do_key_autorepeaton(void *const mlx_ptr);
int32_t wrap_mlx_do_key_autorepeatoff(void *const mlx_ptr);
int32_t wrap_mlx_hook_2(void *const win_ptr, int32_t x_event, int32_t x_mask, int32_t (*function_pointer)(int32_t keycode, void *const param), void *const param);
int32_t wrap_mlx_hook_1(void *const win_ptr, int32_t x_event, int32_t x_mask, int32_t (*function_pointer)(void *const param), void *const param);
int32_t wrap_mlx_destroy_display(void *const mlx_ptr);
int32_t wrap_mlx_destroy_image(void *const mlx_ptr, void *const img_ptr);
int32_t wrap_mlx_destroy_window(void *const mlx_ptr, void *const win_ptr);
int32_t wrap_mlx_destroy_experimental(void **const mlx_ptr, void **const win_ptr, void **const img_ptr, char **img_data);
void *wrap_mlx_xpm_file_to_image(void *const mlx_ptr, char *const filename, int32_t *const width, int32_t *const height);
void *wrap_mlx_xpm_to_image(void *const mlx_ptr, char **xpm_data, int32_t *const width, int32_t *const height);
void wrap_mlx_set_font(void *const mlx_ptr, void *const win_ptr, char *const name);
int32_t wrap_mlx_string_put(void *const mlx_ptr, void *const win_ptr, const int32_t x, const int32_t y, const int32_t color, char *const string);
int32_t wrap_mlx_loop_end(void *const mlx_ptr);
int32_t wrap_mlx_loop(void *const mlx_ptr);
int32_t wrap_mlx_loop_hook_1(void *const win_ptr, int32_t (*function_ptr)(void *const arg), void *const param);
int32_t wrap_mlx_loop_hook_2(void *const win_ptr, int32_t (*function_ptr)(int32_t loopcode, void *const arg), void *const param);
int32_t wrap_mlx_expose_hook_1(void *const win_ptr, int32_t (*function_ptr)(void *const arg), void *const param);
int32_t wrap_mlx_expose_hook_2(void *const win_ptr, int32_t (*function_ptr)(int32_t exposecode, void *const arg), void *const param);
int32_t wrap_mlx_key_hook_1(void *const win_ptr, int32_t (*function_ptr)(void *const arg), void *const param);
int32_t wrap_mlx_key_hook_2(void *const win_ptr, int32_t (*function_ptr)(int32_t keycode, void *const arg), void *const param);
int32_t wrap_mlx_mouse_hook_1(void *const win_ptr, int32_t (*function_ptr)(void *const arg), void *const param);
int32_t wrap_mlx_mouse_hook_2(void *const win_ptr, int32_t (*function_ptr)(int32_t keycode, void *const arg), void *const param);
int32_t wrap_mlx_get_color_value(void *const mlx_ptr, const int32_t color);
int32_t wrap_mlx_put_image_to_window(void *const mlx_ptr, void *const win_ptr, void *const img_ptr, const int32_t x, const int32_t y);
char *wrap_mlx_get_data_addr(void *const img_ptr, int32_t *const bits_per_pixel, int32_t *const size_line, int32_t *const endian);
int32_t wrap_mlx_pixel_put(void *const mlx_ptr, void *const win_ptr, const int32_t x, const int32_t y, const int32_t color);
int32_t wrap_mlx_clear_window(void *const mlx_ptr, void *const win_ptr);
void *wrap_mlx_new_window(void *const mlx_ptr, const int32_t size_x, const int32_t size_y, char *const title);
void *wrap_mlx_init(void);

#endif /* MLX_H */
