import java.util.ArrayList;    // sem uso de ia e exercicios organizados em pastas!

class Tempero {
    String nome;
    int quantidade;

    public Tempero(String nome, int quantidade) {
        this.nome = nome;
        this.quantidade = quantidade;
    }
}

abstract class Monstro {
    private String nome;

    public Monstro(String nome) {
        this.nome = nome;
    }

    public String getNome() {
        return nome;
    }

    public abstract void virarPrato();
}

class Lagosta extends Monstro {
    public Lagosta(String nome) {
        super(nome);
    }

    public void virarPrato() {
        System.out.println("Senshi cozinha " + getNome() + " na manteiga com alho!");
    }
}

class Cogumelo extends Monstro {
    public Cogumelo(String nome) {
        super(nome);
    }

    public void virarPrato() {
        System.out.println("Senshi refoga " + getNome() + " com azeite e ervas!");
    }
}

class Prato {
    String nome;
    private Monstro monstro;
    private Tempero tempero;

    public Prato(String nome, Monstro monstro) {
        this.nome = nome;
        this.monstro = monstro;
        this.tempero = new Tempero("Sal grosso", 2);
    }

    public void servir() {
        System.out.println("Prato: " + nome);
        monstro.virarPrato();
        System.out.println("Temperado com " + tempero.quantidade + "g de " + tempero.nome);
    }
}

public class Main {
    public static void main(String[] args) {
        Lagosta lagosta = new Lagosta("Lagosta Gigante");
        Cogumelo cogumelo = new Cogumelo("Cogumelo Mandrágora");

        Prato p1 = new Prato("Lagosta Grelhada", lagosta);
        Prato p2 = new Prato("Refogado de Cogumelo", cogumelo);

        p1.servir();
        p2.servir();

        ArrayList<Prato> cardapio = new ArrayList<>();
        cardapio.add(p1);
        cardapio.add(p2);

        System.out.println("\nCardápio da expedição:");
        for (Prato p : cardapio) {
            p.servir();
        }
    }
}