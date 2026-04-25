class Heroi:
    def __init__(self, nome, funcao):
        self.nome = nome
        self.funcao = funcao
 
    def usar_ultimate(self):
        raise NotImplementedError("Cada herói deve implementar seu próprio ultimate!")
 
 
class Tanque(Heroi):
    def __init__(self, nome):
        super().__init__(nome, "Tanque")
 
    def usar_ultimate(self):
        print(f"{self.nome} ativa o ultimate de Tanque: escudo intransponível em área!")
 
 
class Dano(Heroi):
    def __init__(self, nome):
        super().__init__(nome, "Dano")
 
    def usar_ultimate(self):
        print(f"{self.nome} ativa o ultimate de Dano: rajada de tiros devastadora!")
 
 
herois = [
    Tanque("Reinhardt"),
    Dano("Reaper"),
    Tanque("D.Va"),
    Dano("Cassidy")
]
 
for heroi in herois:
    heroi.usar_ultimate()