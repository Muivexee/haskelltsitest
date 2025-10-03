createPizza :: String -> String
createPizza typeP = "Pizza " ++ typeP ++ " is ready to be served!"

main :: IO ()
main = do
    putStrLn "Please choose the type of pizza that you want:"
    order <- getLine
    let output = createPizza order
    putStr output