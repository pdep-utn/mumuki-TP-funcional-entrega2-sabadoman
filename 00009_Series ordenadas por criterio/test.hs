describe "6. seriesOrdenadasPor" $ do
  it "seriesOrdenadasPor (menorSegun anioComienzo) [Serie \"los soprano\" 7 1999 \"HBO\", Serie \"lost\" 6 2004 \"ABC\"]" $ do
    seriesOrdenadasPor (menorSegun' anioComienzo) [Serie "los soprano" 7 1999 "HBO", Serie "lost" 6 2004 "ABC"] `shouldBe` True
  it "seriesOrdenadasPor (menorSegun temporadas) [Serie \"los soprano\" 7 1999 \"HBO\", Serie \"lost\" 6 2004 \"ABC\"]" $ do
    seriesOrdenadasPor (menorSegun' temporadas) [Serie "los soprano" 7 1999 "HBO", Serie "lost" 6 2004 "ABC"] `shouldBe` False
  where menorSegun' f x y = f x < f y