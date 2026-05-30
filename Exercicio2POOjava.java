import java.util.ArrayList; // sem uso de ia e exercicios organizados em pastas!

class Cafe {
    private String nome;
    private double preco;

    public Cafe(String nome, double preco) {
        this.nome = nome;
        this.preco = preco;
    }

    public String getNome() {
        return nome;
    }

    public double getPreco() {
        return preco;
    }

    public double calcularPrecoFinal() {
        return preco;
    }
}

class CafeGourmet extends Cafe {
    private double bonusAroma;

    public CafeGourmet(String nome, double preco, double bonusAroma) {
        super(nome, preco);
        this.bonusAroma = bonusAroma;
    }

    @Override
    public double calcularPrecoFinal() {
        return getPreco() + bonusAroma;
    }
}

class Menu {
    private ArrayList<Cafe> cafes;

    public Menu() {
        cafes = new ArrayList<>();
    }

    public void adicionarCafe(Cafe c) {
        cafes.add(c);
    }

    public void exibirMenu() {
        for (Cafe c : cafes) {
            System.out.println(c.getNome() + " - R$" + c.calcularPrecoFinal());
        }
    }
}

class CafeteriaLeblanc {
    private Menu menu;

    public CafeteriaLeblanc() {
        menu = new Menu();
    }

    public Menu getMenu() {
        return menu;
    }

    public void abrirCafeteria() {
        System.out.println("Bem-vindo ao Leblanc!");
        menu.exibirMenu();
    }
}

public class Main {
    public static void main(String[] args) {
        CafeteriaLeblanc leblanc = new CafeteriaLeblanc();
        leblanc.getMenu().adicionarCafe(new Cafe("Café do dia", 5.0));
        leblanc.getMenu().adicionarCafe(new CafeGourmet("Blend Especial", 8.0, 3.5));
        leblanc.getMenu().adicionarCafe(new CafeGourmet("Single Origin", 10.0, 5.0));
        leblanc.abrirCafeteria();
    }
}