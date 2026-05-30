import java.util.HashMap;   // sem uso de ia e exercicios organizados em pastas!


interface Rastreavel {
    String obterCoordenadas();
}

class Poder {
    String nome;
    int intensidade;

    public Poder(String nome, int intensidade) {
        this.nome = nome;
        this.intensidade = intensidade;
    }
}

abstract class Entidade {
    private String nome;

    public Entidade(String nome) {
        this.nome = nome;
    }

    public String getNome() {
        return nome;
    }
}

class Alien extends Entidade implements Rastreavel {
    private Poder poder;

    public Alien(String nome) {
        super(nome);
        poder = new Poder("Raio Plasma", 90);
    }

    public String obterCoordenadas() {
        return "Alien " + getNome() + " localizado em X:142 Y:78";
    }
}

class Youkai extends Entidade implements Rastreavel {
    private Poder poder;

    public Youkai(String nome) {
        super(nome);
        poder = new Poder("Ilusão", 70);
    }

    public String obterCoordenadas() {
        return "Youkai " + getNome() + " localizado em X:33 Y:210";
    }
}

class RegistroOculto {
    private HashMap<String, Entidade> mapa;

    public RegistroOculto() {
        mapa = new HashMap<>();
    }

    public void registrarEntidade(Entidade e) {
        if (mapa.containsKey(e.getNome())) {
            System.out.println(e.getNome() + " já foi registrado!");
            return;
        }
        mapa.put(e.getNome(), e);
    }

    public void listarEntidades() {
        for (String chave : mapa.keySet()) {
            Entidade e = mapa.get(chave);
            System.out.println(((Rastreavel) e).obterCoordenadas());
        }
    }
}

public class Main {
    public static void main(String[] args) {
        Alien a1 = new Alien("Zorg");
        Alien a2 = new Alien("Xenu");
        Youkai y1 = new Youkai("Kappa");
        Youkai y2 = new Youkai("Tengu");

        RegistroOculto registro = new RegistroOculto();
        registro.registrarEntidade(a1);
        registro.registrarEntidade(a2);
        registro.registrarEntidade(y1);
        registro.registrarEntidade(y2);
        registro.registrarEntidade(a1);
        registro.listarEntidades();
    }
}
