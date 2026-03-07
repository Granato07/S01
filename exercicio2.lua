print("Digite a quantidade de numeros:")
N = tonumber(io.read())

tabela = {}

for i = 1, N do
    print("Digite um numero:")
    tabela[i] = tonumber(io.read())
end

function maiorNumero(tab)
    maior = tab[1]

    for i = 1, #tab do
        if tab[i] > maior then
            maior = tab[i]
        end
    end

    return maior
end

resultado = maiorNumero(tabela)
print("Maior numero: " .. resultado)