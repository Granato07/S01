using System;
 
class CombatenteAliado
{
    private string nome;
    private string linhagem;
    private string patente;
 
    public CombatenteAliado(string nome, string linhagem, string patente)
    {
        this.nome = nome;
        this.linhagem = linhagem;
        this.patente = patente;
    }
 
    public void ApresentarUnidade()
    {
        Console.WriteLine($"Nome: {nome} | Linhagem: {linhagem} | Patente: {patente}");
    }
}
 
class Exercicio1
{
    static void Main()
    {
        CombatenteAliado combatente1 = new CombatenteAliado("Boromir", "Humano", "Capitão");
        CombatenteAliado combatente2 = new CombatenteAliado("Gimli", "Anão", "Guerreiro");
        CombatenteAliado combatente3 = new CombatenteAliado("Legolas", "Elfo", "Arqueiro");
 
        combatente1.ApresentarUnidade();
        combatente2.ApresentarUnidade();
        combatente3.ApresentarUnidade();
    }
}