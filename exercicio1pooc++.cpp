#include <iostream>
#include <string>
using namespace std;

class Robo {
public:
    string modelo;
    int versao;
    float potenciaLaser;
    int integridade;

    void disparar(Robo& alvo) {
        cout << modelo << " disparou em " << alvo.modelo << "!" << endl;
        alvo.integridade -= potenciaLaser;
    }

    void exibirStatus() {
        cout << "Modelo: " << modelo << " | Versao: " << versao
             << " | Laser: " << potenciaLaser
             << " | Integridade: " << integridade << endl;
    }
};

int main() {
    Robo r1, r2;

    r1.modelo = "Alpha";
    r1.versao = 1;
    r1.potenciaLaser = 30.5;
    r1.integridade = 100;

    r2.modelo = "Beta";
    r2.versao = 2;
    r2.potenciaLaser = 20.0;
    r2.integridade = 100;

    r1.disparar(r2);

    cout << "\nStatus apos o confronto:" << endl;
    r1.exibirStatus();
    r2.exibirStatus();

    return 0;
}