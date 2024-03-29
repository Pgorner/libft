/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   get_next_line.h                                    :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: pgorner <pgorner@student.42heilbronn.de    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/11/02 17:36:12 by pgorner           #+#    #+#             */
/*   Updated: 2023/01/27 15:43:39 by pgorner          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef GET_NEXT_LINE_H
# define GET_NEXT_LINE_H
# ifndef BUFFER_SIZE
#  define BUFFER_SIZE 100
# endif

# include "../libft.h"
# include <unistd.h>
# include <stdlib.h>
# include <stddef.h>
# include <stdio.h>

// =============================================================================
//									noot_type
// =============================================================================
// Just the thing that makes all of it noot
char	*get_next_line(int fd);
// Frees the result and makes buf = the file content
char	*ft_next(char *buf);
// Just takes the one line that it needs to get
char	*ft_line(char *buf);
// Reads the content of fd
char	*ft_read(int fd, char *buf);
// Strjoin
char	*ft_strjoinfr(char *s1, char *s2);
#endif
