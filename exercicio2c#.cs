using System;
using System.Collections.Generic;

class CriaturaPokemon
{
    public string Especie;

    public virtual void ExecutarMovimento()
    {
        Console.WriteLine($"{Especie} executa um movimento de ataque genérico!");
    }
}

class TipoFogo : CriaturaPokemon
{
    public override void ExecutarMovimento()
    {
        Console.WriteLine($"{Especie} lança uma rajada de chamas!");
    }
}

class TipoAgua : CriaturaPokemon
{
    public override void ExecutarMovimento()
    {
        Console.WriteLine($"{Especie} dispara uma bolha de água!");
    }
}

class Exercicio2
{
    static void Main()
    {
        List<CriaturaPokemon> pokemons = new List<CriaturaPokemon>();

        TipoFogo scorbunny = new TipoFogo();
        scorbunny.Especie = "Scorbunny";

        TipoAgua greninja = new TipoAgua();
        greninja.Especie = "Greninja";

        pokemons.Add(scorbunny);
        pokemons.Add(greninja);

        foreach (CriaturaPokemon pokemon in pokemons)
        {
            pokemon.ExecutarMovimento();
        }
    }
}