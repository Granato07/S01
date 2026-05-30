import java.util.ArrayList;      // sem uso de ia e exercicios organizados em pastas!

abstract class Personagem {
    private String nome;
    private int idade;

    public Personagem(String nome, int idade) {
        this.nome = nome;
        this.idade = idade;
    }

    public String getNome() {
        return nome;
    }

    public int getIdade() {
        return idade;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public abstract void apresentar();
}

class Mago extends Personagem {
    public Mago(String nome, int idade) {
        super(nome, idade);
    }

    public void apresentar() {
        System.out.println("Eu sou " + getNome() + " e consigo lançar feitiços de fogo!");
    }
}

class Divisao {
    String nome;
    String funcao;

    public Divisao(String nome, String funcao) {
        this.nome = nome;
        this.funcao = funcao;
    }
}

class CasteloAnimado {
    private ArrayList<Divisao> divisoes;

    public CasteloAnimado(ArrayList<Divisao> divisoes) {
        this.divisoes = divisoes;
    }

    public void adicionarDivisao(Divisao d) {
        divisoes.add(d);
    }

    public void listarDivisoes() {
        for (Divisao d : divisoes) {
            System.out.println(d.nome + " - " + d.funcao);
        }
    }
}

public class Main {
    public static void main(String[] args) {
        Mago howl = new Mago("Howl", 27);
        howl.apresentar();

        ArrayList<Divisao> lista = new ArrayList<>();
        CasteloAnimado castelo = new CasteloAnimado(lista);
        castelo.adicionarDivisao(new Divisao("Quarto", "Descanso"));
        castelo.adicionarDivisao(new Divisao("Laboratório", "Poções"));
        castelo.adicionarDivisao(new Divisao("Cozinha", "Alimentação"));
        castelo.listarDivisoes();
    }
}