Al proseguir con nuestro trabajo sobre las series de TV (que hicimos en el TP 1), nos dimos cuenta que en realidad nos conviene modelar las series y los actores de la siguiente forma:

```haskell

data Serie = Serie String Int Integer String deriving (Show, Eq)
data Actor = Actor String [Rol] deriving (Show, Eq)
data Rol = Protagonista String | Reparto String deriving (Show, Eq)

series = 
  [Serie "los soprano" 6 1999 "HBO",
  Serie "lost" 6 2004 "ABC",
  Serie "4400" 4 2004 "CBS",
  Serie "United States of Tara" 3 2009 "Dreamworks",
  Serie "V" 3 2009 "Warner Bros.",
  Serie "dr house" 8 2004 "Universal",
  Serie "game of thrones" 6 2011 "HBO",
  Serie "daredevil" 2 2015 "Netflix"]

actores = 
  [Actor "Ken Leung" [Reparto "lost", Reparto "los soprano"],
  Actor "Joel Gretsch" [Protagonista "4400", Reparto "V", Reparto "United States of Tara"],
  Actor "James Gandolfini" [Protagonista "los soprano"],
  Actor "Elizabeth Mitchell" [Reparto "dr house", Protagonista "V", Reparto "lost"]]

```
