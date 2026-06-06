data Bebida = Bebida { nome :: String, tipo :: String, preco :: Double }

data StatusPedido = Aberto | Entregue | Cancelado

data Pedido = Pedido { bebidas :: [Bebida], status :: StatusPedido }

valorTotalPedido :: Pedido -> Double
valorTotalPedido pedido
    | Cancelado <- status pedido = 0.0
    | otherwise = sum (map preco (bebidas pedido))

primeiraBebida :: Pedido -> String
primeiraBebida pedido = case bebidas pedido of
    [] -> "Nenhuma bebida no pedido"
    (b:_) -> nome b

main :: IO ()
main = do
    let p1 = Pedido [Bebida "Cafe Coado" "cafe" 8.0, Bebida "Cappuccino" "cafe" 12.0] Entregue
    let p2 = Pedido [Bebida "Suco de Laranja" "suco" 9.0] Cancelado
    print (valorTotalPedido p1)
    print (valorTotalPedido p2)