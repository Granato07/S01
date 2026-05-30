class Hunter {
  constructor(nome) {
    this.nome = nome;
  }

  lutar() {
    console.log(`${this.nome} está lutando com estilo genérico!`);
  }
}

class Gon extends Hunter {
  constructor() {
    super("Gon");
  }

  lutar() {
    console.log(`${this.nome} usou Jajanken!`);
  }
}

class Killua extends Hunter {
  constructor() {
    super("Killua");
  }

  lutar() {
    console.log(`${this.nome} usou Godspeed!`);
  }
}

class Kurapika extends Hunter {
  constructor() {
    super("Kurapika");
  }

  lutar() {
    console.log(`${this.nome} usou as Correntes Imperativas!`);
  }
}

class TrupeFantasma {
  constructor(nome, membros) {
    this.nome = nome;
    this.membros = membros;
  }

  revelarMembros() {
    console.log(`Membros da ${this.nome}:`);
    this.membros.forEach(membro => console.log(membro.nome));
  }
}

const gon = new Gon();
const killua = new Killua();
const kurapika = new Kurapika();

gon.lutar();
killua.lutar();
kurapika.lutar();

const trupe = new TrupeFantasma("Trupe Fantasma", [
  { nome: "Chrollo" },
  { nome: "Hisoka" },
  { nome: "Feitan" }
]);

trupe.revelarMembros();
