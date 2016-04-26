serie (Serie s _ _ _) = s
temporadas (Serie _ t _ _) = t
anioComienzo (Serie _ _ a _) = a
cadenaTV (Serie _ _ _ c) = c
nombreActor (Actor n _) = n
seriesDeActor (Actor _ s) = map serieRol s
serieRol (Protagonista s) = s
serieRol (Reparto s) = s

find criterio = head . filter criterio

datosDe s = find ((==s).serie) series
participoDe s a = 
    elem s . seriesDeActor $ find ((==a).nombreActor) actores
listaDeActoresDe s =
    filter (participoDe s) $ map nombreActor actores 
anioDeComienzoDe s = anioComienzo $ datosDe s
seriesOrdenadas [] = True
seriesOrdenadas [_] = True
seriesOrdenadas (s1:s2:ss) = 
    anio s1 < anio s2 
    && seriesOrdenadas (s2:ss)
    where anio s = anioComienzo . datosDe $ s
quienesSonEstrellas acts = 
    map nombreActor $ filter esEstrella acts
    where esEstrella a = (>2) . length . filter (flip participoDe $ nombreActor a) . map serie $ series
promedioDeTemporadas ss = 
    div (sum $ map temporadas ss) (length ss)
    
serieConGranElenco =
    (>=3) . length . filter esEstrella . listaDeActoresDe
    where esEstrella a = (>2) . length . seriesDeActor . find ((==a).nombreActor) $ actores
    
tieneMasDeNTemporadas n =
    filter ((>n).temporadas)

posterioresAlAnio a =
    filter (\s -> anioComienzo s > a)
    
producidasPorLaCadena c =
    filter ((== c).cadenaTV)

trabajaronMasDeNActores n =
    filter (\s -> length (listaDeActoresDe $ serie s) > n)

seriesQueCumplen = foldl (flip ($))

menorSegun' f x y = f x < f y