describe "¿Cuáles series...?" $ do
  describe "3.a.i. tieneMasDeNTemporadas" $ do
    it "tieneMasDeNTemporadas 6 series  devuelve la lista [Serie \"dr house\" 8 2004 \"Universal\"]" $ do
      tieneMasDeNTemporadas 6 series `shouldBe` [Serie "dr house" 8 2004 "Universal"]
  describe "3.a.ii. posterioresAlAnio" $ do
    it "posterioresAlAnio 2006 series devuelve la lista [Serie \"United States of Tara\" 3 2009 \"Dreamworks\", Serie \"V\",3,2009,\"Warner Bros.\", Serie \"game of thrones\" 6 2011 \"HBO\", Serie \"daredevil\" 2 2015 \"Netflix\"]" $ do
      posterioresAlAnio 2006 series `shouldBe` [Serie "United States of Tara" 3 2009 "Dreamworks", Serie "V" 3 2009 "Warner Bros.", Serie "game of thrones" 6 2011 "HBO", Serie "daredevil" 2 2015 "Netflix"]
  describe "3.a.iii. producidasPorLaCadena" $ do
    it "producidasPorLaCadena \"HBO\" series  devuelve la lista [Serie \"los soprano\" 6 1999 \"HBO\", Serie \"game of thrones\" 6 2011 \"HBO\"]" $ do
      producidasPorLaCadena "HBO" series `shouldBe` [Serie "los soprano" 6 1999 "HBO", Serie "game of thrones" 6 2011 "HBO"]
  describe "3.a.iv. trabajaronMasDeNActores" $ do
    it "trabajaronMasDeNActores 1 series  devuelve la lista [Serie \"los soprano\" 6 1999 \"HBO\", Serie \"lost\" 6 2004 \"ABC\", Serie \"V\" 3 2009 \"Warner Bros.\"]" $ do
      trabajaronMasDeNActores 1 series `shouldBe` [Serie "los soprano" 6 1999 "HBO", Serie "lost" 6 2004 "ABC", Serie "V" 3 2009 "Warner Bros."]