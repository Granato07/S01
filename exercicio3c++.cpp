#include <iostream>
using namespace std;

int main() {
    float saldo;
    int opcao;

    cout << "Digite seu saldo inicial: R$ ";
    cin >> saldo;

    do {
        cout << "\n===== MENU =====" << endl;
        cout << "1. Ver Saldo" << endl;
        cout << "2. Depositar" << endl;
        cout << "3. Sacar" << endl;
        cout << "4. Sair" << endl;
        cout << "Escolha uma opcao: ";
        cin >> opcao;

        switch (opcao) {
            case 1:
                cout << "Saldo atual: R$ " << saldo << endl;
                break;

            case 2: {
                float deposito;
                cout << "Digite o valor a depositar: R$ ";
                cin >> deposito;
                saldo += deposito;
                cout << "Deposito realizado! Novo saldo: R$ " << saldo << endl;
                break;
            }

            case 3: {
                float saque;
                cout << "Digite o valor a sacar: R$ ";
                cin >> saque;
                if (saque > saldo) {
                    cout << "Saldo Insuficiente!" << endl;
                } else {
                    saldo -= saque;
                    cout << "Saque realizado! Novo saldo: R$ " << saldo << endl;
                }
                break;
            }

            case 4:
                cout << "Saindo... Ate logo!" << endl;
                break;

            default:
                cout << "Opcao invalida! Tente novamente." << endl;
        }

    } while (opcao != 4);

    return 0;
}