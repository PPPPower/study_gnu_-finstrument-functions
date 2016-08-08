#ifndef XY_DEBUG_H
#define XY_DEBUG_H

#include <stdio.h>
#include <stdlib.h>

#define DUMP(func, call)  fprintf(fp,"%s: func = %p, called by = %p\n", __FUNCTION__, func, call)
void main_constructor( void ) __attribute__ ((no_instrument_function, constructor));
void main_destructor( void ) __attribute__ ((no_instrument_function, destructor));

#endif
