class ArmaCorpoACorpo:
    def __init__(self):
        self.tipo = "Faca"
 
    def __str__(self):
        return f"Arma: {self.tipo}"
 
 
class PhantomThieves:
    def __init__(self, nome, arma):
        self.nome = nome
        self.arma = arma
 
    def __str__(self):
        return f"Membro: {self.nome} | Arma: {self.arma}"
 
 
class Joker:
    def __init__(self, membros):
        # Composição: ArmaCorpoACorpo é criada e gerenciada pelo próprio Joker
        self.arma = ArmaCorpoACorpo()
        # Agregação: lista de membros recebida de fora
        self.membros = membros
 
    def mostrar_equipe(self):
        print(f"Joker empunha sua {self.arma}")
        print("Phantom Thieves:")
        for membro in self.membros:
            print(f"  - {membro}")
 
 
equipe = [
    PhantomThieves("Ryuji", "Soco inglês"),
    PhantomThieves("Ann", "Chicote"),
    PhantomThieves("Yusuke", "Katana"),
]
 
joker = Joker(equipe)
joker.mostrar_equipe()
 