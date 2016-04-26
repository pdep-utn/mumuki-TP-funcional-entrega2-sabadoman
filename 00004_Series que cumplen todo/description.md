Dada una lista de series y otra de criterios, indicar qué series de la primera cumplen todos los criterios de la segunda.

```haskell

> seriesQueCumplen series [trabajaronMasDeNActores 1, producidasPorLaCadena "HBO"]
[("los soprano",6,1999,"HBO")]

> seriesQueCumplen series [trabajaronMasDeNActores 1, producidasPorLaCadena "ABC", posterioresAlAnio 2000]
[("lost",6,2004,"ABC")]

```

DESAFÍO (fuera del TP): Resolver esta función sin escribir sus parámetros.