class Criatura {
  constructor(nome, perigo) {
    this.nome = nome;
    this.perigo = perigo;
  }
}

class Diario {
  constructor() {
    this.criaturas = [];
  }

  registrarCriatura(criatura) {
    this.criaturas.push(criatura);
  }

  listarCriaturas() {
    this.criaturas.forEach(criatura => {
      console.log(`Criatura: ${criatura.nome} | Perigo: ${criatura.perigo}`);
    });
  }
}

class Personagem {
  constructor(nome) {
    this.nome = nome;
  }
}

class CabanaMisterio {
  constructor(personagens) {
    this.personagens = personagens;
  }

  listarFuncionarios() {
    this.personagens.forEach(personagem => {
      console.log(`Funcionário: ${personagem.nome}`);
    });
  }
}

const diario = new Diario();

diario.registrarCriatura(new Criatura("Gnomo", "Baixo"));
diario.registrarCriatura(new Criatura("Homem-Pato", "Médio"));
diario.registrarCriatura(new Criatura("Bill Cipher", "Extremo"));

console.log("Criaturas do Diário 3:");
diario.listarCriaturas();

const stan = new Personagem("Grunkle Stan");
const mabel = new Personagem("Mabel");
const soos = new Personagem("Soos");

const cabana = new CabanaMisterio([stan, mabel, soos]);

console.log("Funcionários da Cabana do Mistério:");
cabana.listarFuncionarios();
