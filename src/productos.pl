
% articulo(clave, descripcion, precio)
producto(pr1, computadora, 15).
producto(pr2, raton_alambrico, 10).
producto(pr3, proyector, 10).
producto(pr4, adaptador_vga, 10).
producto(pr5, raton_inalambrico, 5).
producto(pr6, memoria_usb, 5).
producto(pr7, disco_externo, 5).
producto(pr8, escritorio, 100). 

% inventario(clave, existencias)
inventario(pr1, 32).
inventario(pr2, 4).
inventario(pr3, 5).
inventario(pr4, 64).
inventario(pr5, 12).
inventario(pr6, 10).
inventario(pr7, 89).
inventario(pr8, 2).

% cliente(nombre, ciudad, calificacion-credito)
cliente(ana, fresnillo, 5).
cliente(maria, jerez, 4).
cliente(luis, jerez, 2).
cliente(juan, zacatecas, 3).
cliente(gerardo, gaudalupe, 4).
cliente(david, zacatecas, 5).
cliente(perla, gaudalupe, 4).
cliente(omar, zacatecas, 3).
cliente(lucia, jerez, 4).
cliente(diana, fresnillo, 1).

%TAREA
% 1.- Mostrar clientes en una ciudad dada.
clientes_por_ciudad(Nombre, Ciudad) :- cliente(Nombre, Ciudad, _).

% 2.- Encontrar clientes con una calificación crediticia determinada.
clientes_por_calificacion(Nombre, Calificacion) :- cliente(Nombre, _, Calificacion).

% 3.- Encontrar los clientes en una ciudad determinada con una calificación de crédito determinada.
clientes_por_ciudad_y_calificaciones(Nombre, Ciudad, Calificacion) :- cliente(Nombre, Ciudad, Calificacion).

% 4.- Encuentre la cantidad de limite en existencias para un artículo dado.
cantidad_limite(Articulo, Cantidad):- producto(Clave, Articulo, _), inventario(Clave, Cantidad).

% 5.- Encuentre el número de artículo para un nombre de artículo determinado.
existencia_articulo(Articulo, Clave):- producto(Clave, Articulo, _).

% 6.- Encuentre el nivel de inventario para un número de artículo dado.
inventario_por_articulo(Clave, Cantidad):- inventario(Clave, Cantidad).

% 7.- Crear una regla que ayude a mostrar la cantidad de artículos que hay para cada artículo. 
productos_cantidad(Articulo, Cantidad):- producto(Clave, Articulo, _) , inventario(Clave, Cantidad).

%PRUEBAS
%clientes_por_ciudad(Nombres, jerez).
%clientes_por_calificacion(Nombres, 5).
%clientes_por_ciudad_y_calificaciones(Nombre, jerez, 4).
%cantidad_limite(computadora, Cantidad).
%existencia_articulo(computadora, NumProd).
%inventario_por_articulo(pr1, Cantidad).
%productos_cantidad(Prod, Cantidad).

