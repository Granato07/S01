data Item = Item { nomeItem :: String, categoria :: String, precoItem :: Double }

data StatusCompra = Pendente | Concluida | Cancelada

data Compra = Compra { itens :: [Item], statusCompra :: StatusCompra }

totalItens :: [Item] -> Double
totalItens lista = sum (map precoItem lista)

valorFinal :: Compra -> Double
valorFinal compra
    | Cancelada <- statusCompra compra = 0.0
    | total > 200 = total * 0.9
    | otherwise = total
    where total = totalItens (itens compra)

main :: IO ()
main = do
    let c1 = Compra [Item "Espada" "arma" 150.0, Item "Escudo" "armadura" 80.0, Item "Poção" "consumivel" 30.0] Concluida
    print (valorFinal c1)
