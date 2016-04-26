describe "TP1" $ do
  describe "1. datosDe" $ do
    it "datosDe \"4400\"    devuelve (Serie \"4400\" 4 2004 \"CBS\")" $ do
      datosDe "4400" `shouldBe` (Serie "4400" 4 2004 "CBS")
    it "datosDe \"lost\"    devuelve (Serie \"lost\" 6 2004 \"ABC\")" $ do
      datosDe "lost" `shouldBe` (Serie "lost" 6 2004 "ABC")
    it "datosDe \"United States of Tara\"    devuelve (Serie \"United States of Tara\" 3 2009 \"Dreamworks\")" $ do
      datosDe "United States of Tara" `shouldBe` (Serie "United States of Tara" 3 2009 "Dreamworks")
  describe "2.a. participoDe" $ do
    it "participoDe \"4400\" \"Joel Gretsch\"    es verdadero" $ do
      participoDe "4400" "Joel Gretsch" `shouldBe` True
    it "participoDe \"lost\" \"Joel Gretsch\"    es falso" $ do
      participoDe "lost" "Joel Gretsch" `shouldBe` False
    it "participoDe \"lost\" \"Ken Leung\"    es verdadero" $ do
      participoDe "lost" "Ken Leung" `shouldBe` True
  describe "2.b. listaDeActoresDe" $ do
    it "listaDeActoresDe \"los soprano\"   devuelve la lista [\"Ken Leung\", \"James Gandolfini\"]" $ do
      listaDeActoresDe "los soprano" `shouldBe` ["Ken Leung", "James Gandolfini"]
    it "listaDeActoresDe \"lost\"    devuelve la lista [\"Ken Leung\",\"Elizabeth Mitchell\"]" $ do
      listaDeActoresDe "lost" `shouldBe` ["Ken Leung","Elizabeth Mitchell"]
    it "listaDeActoresDe \"dr house\"    devuelve la lista [\"Elizabeth Mitchell\"]" $ do
      listaDeActoresDe "dr house" `shouldBe` ["Elizabeth Mitchell"]
  describe "3.a. anioDeComienzoDe" $ do
    it "anioDeComienzoDe \"lost\"    devuelve 2004" $ do
      anioDeComienzoDe "lost" `shouldBe` 2004
    it "anioDeComienzoDe \"dr house\"    devuelve 2004" $ do
      anioDeComienzoDe "dr house" `shouldBe` 2004
    it "anioDeComienzoDe \"game of thrones\"  devuelve 2004" $ do
      anioDeComienzoDe "game of thrones" `shouldBe` 2011
  describe "3.b. seriesOrdenadas" $ do
    it "seriesOrdenadas [\"dr house\", \"V\", \"lost\"]    es falso" $ do
      seriesOrdenadas ["dr house", "V", "lost"] `shouldBe` False
    it "seriesOrdenadas [\"dr house\", \"lost\"]    es falso" $ do
      seriesOrdenadas ["dr house", "lost"] `shouldBe` True
    it "seriesOrdenadas [\"game of thrones\", \"lost\", \"V\", \"4400\"]    es falso" $ do
      seriesOrdenadas ["game of thrones", "lost", "V", "4400"] `shouldBe` False
  describe "4. quienesSonEstrellas" $ do
    it "quienesSonEstrellas actores    devuelve la lista [\"Joel Gretsch\",\"Elizabeth Mitchell\"]" $ do
      quienesSonEstrellas actores `shouldBe` ["Joel Gretsch","Elizabeth Mitchell"]
    it "quienesSonEstrellas [Actor \"Ken Leung\" [\"lost\",\"los soprano\"],Actor \"Joel Gretsch\" [\"4400\",\"V\",\"United States of Tara\"])]    devuelve la lista [\"Joel Gretsch\"]" $ do
      quienesSonEstrellas [Actor "Ken Leung" ["lost","los soprano"], Actor "Joel Gretsch" ["4400","V","United States of Tara"])] `shouldBe` ["Joel Gretsch"]
  describe "5. promedioDeTemporadas" $ do
    it "promedioDeTemporadas series   devuelve 5" $ do
      promedioDeTemporadas series `shouldBe` 5
    it "promedioDeTemporadas [Serie \"los soprano\" 6 1999 \"HBO\", Serie \"lost\" 6 2004 \"ABC\"]   devuelve 6" $ do
      promedioDeTemporadas [Serie "los soprano" 6 1999 "HBO", Serie "lost" 6 2004 "ABC")] `shouldBe` 6