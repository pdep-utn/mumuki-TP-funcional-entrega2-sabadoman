it "seriesQueCumplen  tiene un tipo válido" $ do
  seriesQueCumplen series [const True] `shouldBe` series