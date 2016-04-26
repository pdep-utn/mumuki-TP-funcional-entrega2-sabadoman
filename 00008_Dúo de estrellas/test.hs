describe "5. duoDeEstrellas" $ do
  it "duoDeEstrellas \"Joel Gretsch\" \"Elizabeth Mitchell\"  es verdadero" $ do 
    duoDeEstrellas "Joel Gretsch" "Elizabeth Mitchell" `shouldBe` True