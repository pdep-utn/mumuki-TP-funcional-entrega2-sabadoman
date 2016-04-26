it "seriesQueCumplen" $ do
  seriesQueCumplen series [const True] `shouldBe` series