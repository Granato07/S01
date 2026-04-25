class Cibernetico:
    """Classe base que funciona como interface — força realizar_hack() nas filhas."""

    def realizar_hack(self):
        raise NotImplementedError("Implemente realizar_hack() na classe filha!")


class Implante:
    def __init__(self, custo, funcao):
        self.custo = custo
        self.funcao = funcao

    def __str__(self):
        return f"Implante [{self.funcao}] - Custo: {self.custo} créditos"


class NetRunner(Cibernetico):
    def __init__(self, nome, custo_implante, funcao_implante):
        self.nome = nome
        # Composição: Implante criado e gerenciado pelo NetRunner
        self.implante = Implante(custo_implante, funcao_implante)

    def realizar_hack(self):
        print(f"{self.nome} realiza um hack usando '{self.implante.funcao}'!")


class Faccao:
    def __init__(self):
        # Agregação: membros adicionados externamente
        self.membros = []

    def adicionar_membro(self, membro):
        self.membros.append(membro)

    def executar_hack_geral(self):
        print("=== Facção iniciando operação de hack ===")
        for membro in self.membros:
            membro.realizar_hack()

faccao = Faccao()
faccao.adicionar_membro(NetRunner("Alt Cunningham", 15000, "Quebra de ICE"))
faccao.adicionar_membro(NetRunner("Rache Bartmoss", 30000, "Daemon Viral"))
faccao.adicionar_membro(NetRunner("V", 8000, "Invasão de Rede"))

faccao.executar_hack_geral()