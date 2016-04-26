Utilizar la función ```seriesQueCumplen```, del punto anterior, en una consulta para obtener aquellas series cuyo nombre empieza con la letra “l” y son anteriores al año 2000. 

```haskell

> ... tuConsulta ...
[Serie "los soprano" 6 1999 "HBO"]

```

**Nota**: No se permite definir funciones auxiliares en este punto, sólo la consulta. Sí se pueden usar funciones definidas para puntos anteriores o dadas en el enunciado.

Por un tema de implementación de mumuki, esta consulta la vamos a hacer definiendo la función constante "consulta", justamente. Es decir, la definición puede tener una única línea y empieza de esta forma:

```haskell

consulta = ...

```

