describe "6. seriesOrdenadasPor" $ do
  it "seriesOrdenadasPor (menorSegun anioDeEstreno) [Serie \"los soprano\" 7 1999 \"HBO\", Serie \"lost\" 6 2004 \"ABC\"]" $ do
    seriesOrdenadasPor (menorSegun' anioDeEstreno) [Serie "los soprano" 7 1999 "HBO", Serie "lost" 6 2004 "ABC"] `shouldBe` True
  it "seriesOrdenadasPor (menorSegun cantidadDeTemporadas) [Serie \"los soprano\" 7 1999 \"HBO\", Serie \"lost\" 6 2004 \"ABC\"]" $ do
    seriesOrdenadasPor (menorSegun' cantidadDeTemporadas) [Serie "los soprano" 7 1999 "HBO", Serie "lost" 6 2004 "ABC"] `shouldBe` False