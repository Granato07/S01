data Banda = Banda { nomeBanda :: String, genero :: String, cache :: Double }

data StatusEvento = Ativo | Encerrado | Cancelado

data Evento = Evento { bandas :: [Banda], statusEvento :: StatusEvento }

custoTotalEvento :: Evento -> Double
custoTotalEvento evento
    | Cancelado <- statusEvento evento = 0.0
    | otherwise = sum (map cache (bandas evento)) * 1.2

bandaAbertura :: Evento -> String
bandaAbertura evento = case bandas evento of
    [] -> "Nenhuma banda no evento"
    (b:_) -> nomeBanda b

bandaEncerramento :: Evento -> String
bandaEncerramento evento = case bandas evento of
    [] -> "Nenhuma banda no evento"
    bs -> nomeBanda (last bs)

main :: IO ()
main = do
    let e1 = Evento [Banda "The Killers" "rock" 500.0, Banda "Arcade Fire" "indie" 300.0] Ativo
    let e2 = Evento [Banda "Daft Punk" "eletronico" 800.0] Encerrado
    let e3 = Evento [Banda "Radiohead" "rock" 600.0] Cancelado
    print (custoTotalEvento e1)
    putStrLn (bandaAbertura e1)
    putStrLn (bandaEncerramento e1)
    print (custoTotalEvento e2)
    print (custoTotalEvento e3)