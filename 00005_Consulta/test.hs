describe "3.c. consulta" $ do
  it "consulta  devuelve [Serie \"los soprano\" 6 1999 \"HBO\"]" $ do
    consulta `shouldBe` [Serie "los soprano" 6 1999 "HBO"]