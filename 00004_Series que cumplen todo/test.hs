describe "3.b. seriesQueCumplen" $ do
  it "seriesQueCumplen series [trabajaronMasDeNActores 1, producidasPorLaCadena \"HBO\"]  devuelve la lista [Serie \"los soprano\" 6 1999 \"HBO\"]" $ do
    seriesQueCumplen series [trabajaronMasDeNActores 1, producidasPorLaCadena "HBO"] `shouldBe` [Serie "los soprano" 6 1999 "HBO"]
  it "seriesQueCumplen series [trabajaronMasDeNActores 1, producidasPorLaCadena \"ABC\", posterioresAlAnio 2000] devuelve la lista [Serie \"lost\" 6 2004 \"ABC\"]" $ do
    seriesQueCumplen series [trabajaronMasDeNActores 1, producidasPorLaCadena "ABC", posterioresAlAnio 2000] `shouldBe` [Serie "lost" 6 2004 "ABC"]