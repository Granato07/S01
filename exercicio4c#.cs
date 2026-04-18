using System;
using System.Collections.Generic;

abstract class AbominacaoCosmica
{
    public string Nome { get; set; }

    public abstract void Manifestar();
}

class Shoggoth : AbominacaoCosmica
{
    public Shoggoth(string nome)
    {
        Nome = nome;
    }

    public override void Manifestar()
    {
        Console.WriteLine($"{Nome}: A massa de protoplasma se arrasta borbulhando, moldando órgãos e olhos conforme avança.");
    }
}

class CacadorAlado : AbominacaoCosmica
{
    public CacadorAlado(string nome)
    {
        Nome = nome;
    }

    public override void Manifestar()
    {
        Console.WriteLine($"{Nome}: A criatura bate suas asas membranosas, mergulhando do vácuo estelar em um voo silencioso.");
    }
}

class Exercicio4
{
    static void Main()
    {
        List<AbominacaoCosmica> abominacoes = new List<AbominacaoCosmica>();

        abominacoes.Add(new Shoggoth("Shoggoth Primordial"));
        abominacoes.Add(new CacadorAlado("Morte Alada"));

        foreach (AbominacaoCosmica criatura in abominacoes)
        {
            criatura.Manifestar();
        }
    }
}