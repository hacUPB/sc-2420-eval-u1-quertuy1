// Dibuja una cruz en el centro de la pantalla

@4000        // Direccion de inicio de la memoria de video
D=A          // Guarda la dirección base de la memoria de video en el registro D
@SCREEN      // Definimos SCREEN como 0x4000
M=D          // Mueve la dirección base a la dirección de memoria 0x4000

// Dibuja la línea horizontal en el centro de la pantalla
@256         // Offset para la posición vertical del centro (256 / 2 = 128)
D=A
@HLINE       // Definimos HLINE como 0x8000 (posición de la línea horizontal)
M=D          // Mueve el offset al registro M
@80          // Ancho de la cruz horizontal (puedes ajustar este valor)
D=A
@WIDTH       // Definimos WIDTH como 80
M=D          // Mueve el ancho a WIDTH
@100         // Línea horizontal
D=A
@YLINE       // Definimos YLINE como 100
M=D          // Mueve la posición Y de la línea horizontal a YLINE
@80          // Ancho de la cruz horizontal
D=A
@HLINE       // Cargamos la dirección de la línea horizontal
D=D+M        // Sumamos la posición del centro (para el offset de la línea horizontal)
@255         // Asignamos el valor del pixel (255 es blanco)
D=A
@SCREEN      // Dirección base de la memoria de video
A=M
M=D          // Escribe el valor en la memoria de video

// Dibuja la línea vertical en el centro de la pantalla
@256         // Offset para la posición vertical del centro (256 / 2 = 128)
D=A
@VLINE       // Definimos VLINE como 0x8000 (posición de la línea vertical)
M=D          // Mueve el offset al registro M
@100         // Línea vertical
D=A
@XLINE       // Definimos XLINE como 100
M=D          // Mueve la posición X de la línea vertical a XLINE
@80          // Altura de la cruz vertical
D=A
@HEIGHT      // Definimos HEIGHT como 80
M=D          // Mueve la altura a HEIGHT
@100         // Línea vertical
D=A
@VLINE       // Cargamos la dirección de la línea vertical
D=D+M        // Sumamos la posición del centro (para el offset de la línea vertical)
@255         // Asignamos el valor del pixel (255 es blanco)
D=A
@SCREEN      // Dirección base de la memoria de video
A=M
M=D          // Escribe el valor en la memoria de video

// Fin del programa
@END
0;JMP

(END)
@END
0;JMP
