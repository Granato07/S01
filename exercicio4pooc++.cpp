#include <iostream>
#include <string>
#include <vector>
using namespace std;

class MembroConselho {
public:
    string nome;

    virtual void saudar() {
        cout << "Um membro do conselho faz uma reverencia silenciosa." << endl;
    }
};

class Anao : public MembroConselho {
public:
    void saudar() override {
        cout << "Pela forca da montanha, eu sou " << nome << " e honro nosso aco!" << endl;
    }
};

class Orc : public MembroConselho {
public:
    void saudar() override {
        cout << "Pelo sangue e gloria, eu sou " << nome << " e trago a forca de minha tribo!" << endl;
    }
};

class Draconato : public MembroConselho {
public:
    void saudar() override {
        cout << "Pelo sopro dos ancestrais, eu sou " << nome << " e falo em nome dos dragoes!" << endl;
    }
};

int main() {
    Anao a;
    a.nome = "Thorin";

    Orc o;
    o.nome = "Grommash";

    Draconato d;
    d.nome = "Draxis";

    // Lista de ponteiros da classe base
    vector<MembroConselho*> conselho;
    conselho.push_back(&a);
    conselho.push_back(&o);
    conselho.push_back(&d);

    // Percorre a lista chamando saudar() de forma polimorfica
    for (int i = 0; i < conselho.size(); i++) {
        conselho[i]->saudar();
    }

    return 0;
}