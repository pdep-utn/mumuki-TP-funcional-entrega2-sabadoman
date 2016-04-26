describe "4. " $ do
  it "seriesQueFueProtagonista \"Elizabeth Mitchell\" devuelve la lista [\"V\"]" $ do
    seriesQueFueProtagonista "Elizabeth Mitchell" `shouldBe` ["V"]