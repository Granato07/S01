print("Digite a quantidade de numeros:")
N = tonumber(io.read())

tabela = {}
impares = {}

for i = 1, N do
    print("Digite um numero:")
    tabela[i] = tonumber(io.read())
end

for i = 1, N do
    if tabela[i] % 2 ~= 0 then
        table.insert(impares, tabela[i])
    end
end

for i = 1, #impares do
    print(impares[i])
end