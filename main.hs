createPizza :: String -> String -> String
createPizza typeP price = "Pizza " ++ typeP ++ " is " ++ price ++ "$ and is ready to be served!"

pizzaPrice :: [(String, String)]
pizzaPrice = [ ("Margarita", "7.99"), ("Pepperoni", "10.99"), ("Hawaii", "12.99"), ("BBQ", "11.99"), ("Mushroom","15.99")]

getPrice :: String -> [(String, String)] -> String
getPrice _ [] = "not available"
getPrice name ((n,p):xs) =
    if name == n
       then p
       else getPrice name xs

main :: IO ()
main = do      
    putStr "----------- Menu ------------"
    putStrLn "\n- Margarita \n- Pepperoni \n- Hawaii \n- BBQ \n- Mushroom"
    putStr "-----------------------------"
    putStrLn "\nPlease choose the type of pizza that you want:"
    
    order <- getLine
    
    let price = getPrice order pizzaPrice
    
    if price == "not available" then
        putStrLn "Sorry, we don't have that pizza!"
    else do
        let output = createPizza order price
        putStrLn output
