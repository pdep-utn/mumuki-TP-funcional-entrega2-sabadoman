describe "serie con gran elenco" $ do
  it "\"Los soprano\" no es una serie con gran elenco" $ do
    serieConGranElenco "los soprano" `shouldBe` False