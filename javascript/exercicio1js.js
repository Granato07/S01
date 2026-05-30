class Pokemon {
  #vida;

  constructor(nome, tipo) {
    this.nome = nome;
    this.tipo = tipo;
    this.#vida = 100;
  }

  get vida() {
    return this.#vida;
  }

  atacar() {
    console.log(`${this.nome} usou um ataque genérico!`);
  }

  receberDano(dano) {
    this.#vida = Math.max(0, this.#vida - dano);
  }
}

class Pikachu extends Pokemon {
  constructor() {
    super("Pikachu", "Elétrico");
  }

  atacar() {
    console.log(`${this.nome} usou Thunderbolt!`);
  }
}

class Charizard extends Pokemon {
  constructor() {
    super("Charizard", "Fogo/Voador");
  }

  atacar() {
    console.log(`${this.nome} usou Lança-Chamas!`);
  }
}

const pikachu = new Pikachu();
const charizard = new Charizard();

pikachu.atacar();
charizard.atacar();

charizard.receberDano(40);
console.log(`Vida de ${charizard.nome}: ${charizard.vida}`);
