-- pedir os valores para o usuario
print("Digite o valor de M (inicio do intervalo):")
M = tonumber(io.read())

print("Digite o valor de N (fim do intervalo):")
N = tonumber(io.read())

print("Digite o valor de X (numero da tabuada):")
X = tonumber(io.read())

-- calcular a tabuada de X no intervalo de M até N
for i = M, N do
    resultado = X * i
    print(X .. " x " .. i .. " = " .. resultado)
end