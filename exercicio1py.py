class Personagem:
    def __init__(self, vida, resistencia):
        self._vida = vida
        self._resistencia = resistencia
 
    @property
    def vida(self):
        return self._vida
 
    @vida.setter
    def vida(self, valor):
        if valor < 0:
            self._vida = 0
        else:
            self._vida = valor
 
    def __str__(self):
        return f"Personagem com {self._vida} de vida e {self._resistencia} de resistência"
 
 
class Cavaleiro(Personagem):
    def __init__(self, vida, resistencia, armadura_pesada):
        super().__init__(vida, resistencia)
        self.armadura_pesada = armadura_pesada
 
    def __str__(self):
        return (f"Cavaleiro com {self._vida} de vida, {self._resistencia} de resistência "
                f"e armadura pesada: {self.armadura_pesada}")
 
 

p = Personagem(100, 50)
print(p)
 
p.vida = -10
print(f"Vida após receber dano letal: {p.vida}")
 
c = Cavaleiro(200, 80, True)
print(c)