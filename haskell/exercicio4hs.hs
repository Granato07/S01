data Servico = Servico { nomeServico :: String, tipoServico :: String, precoServico :: Double }

data StatusAtendimento = EmAndamento | Finalizado | Cancelado

data Atendimento = Atendimento { servicos :: [Servico], statusAtendimento :: StatusAtendimento }

totalServicos :: [Servico] -> Double
totalServicos lista = sum (map precoServico lista)

valorFinalAtendimento :: Atendimento -> Double
valorFinalAtendimento atendimento
    | Cancelado <- statusAtendimento atendimento = 0.0
    | length (servicos atendimento) > 3 = total * 1.25
    | otherwise = total
    where total = totalServicos (servicos atendimento)

primeiroServico :: Atendimento -> String
primeiroServico atendimento = case servicos atendimento of
    [] -> "Nenhum servico contratado"
    (s:_) -> nomeServico s

main :: IO ()
main = do
    let a1 = Atendimento [Servico "Banho" "higiene" 50.0, Servico "Massagem" "relaxamento" 80.0] Finalizado
    let a2 = Atendimento [Servico "Banho" "higiene" 50.0, Servico "Massagem" "relaxamento" 80.0, Servico "Sauna" "relaxamento" 60.0, Servico "Esfoliacao" "estetica" 40.0] EmAndamento
    print (valorFinalAtendimento a1)
    putStrLn (primeiroServico a1)
    print (valorFinalAtendimento a2)
    putStrLn (primeiroServico a2)
