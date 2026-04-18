using System;
using System.Collections.Generic;

class ReliquiaMagica
{
    public string NomeItem { get; set; }

    public ReliquiaMagica(string nomeItem)
    {
        NomeItem = nomeItem;
    }
}

class BauDeReliquias
{
    private List<ReliquiaMagica> reliquias = new List<ReliquiaMagica>();

    public void GuardarItem(ReliquiaMagica item)
    {
        reliquias.Add(item);
        Console.WriteLine($"Relíquia '{item.NomeItem}' guardada no baú.");
    }
}

class ItemDeAcampamento
{
    public string NomeItem { get; set; }

    public ItemDeAcampamento(string nomeItem)
    {
        NomeItem = nomeItem;
    }
}

class Maga
{
    public string Nome { get; set; }
    private BauDeReliquias bau;
    private List<ItemDeAcampamento> itensDeAcampamento;

    public Maga(string nome, List<ItemDeAcampamento> itens)
    {
        Nome = nome;
        bau = new BauDeReliquias();
        itensDeAcampamento = itens;
    }

    public void GuardarReliquia(ReliquiaMagica item)
    {
        bau.GuardarItem(item);
    }

    public void MostrarItensDeAcampamento()
    {
        Console.WriteLine($"\nItens de acampamento de {Nome}:");
        foreach (ItemDeAcampamento item in itensDeAcampamento)
        {
            Console.WriteLine($"- {item.NomeItem}");
        }
    }
}

class Exercicio3
{
    static void Main()
    {
        List<ItemDeAcampamento> itens = new List<ItemDeAcampamento>();
        itens.Add(new ItemDeAcampamento("Saco de Dormir"));
        itens.Add(new ItemDeAcampamento("Pote de Cozinha"));

        Maga frieren = new Maga("Frieren", itens);

        frieren.GuardarReliquia(new ReliquiaMagica("Anel de Prata"));
        frieren.GuardarReliquia(new ReliquiaMagica("Grimório Antigo"));

        frieren.MostrarItensDeAcampamento();
    }
}