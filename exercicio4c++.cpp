#include <iostream>
using namespace std;

int main() {
    int sala[5][5] = {0};
    int opcao;

    do {
        cout << "\n===== MENU =====" << endl;
        cout << "1. Reservar Assento" << endl;
        cout << "2. Ver Mapa da Sala" << endl;
        cout << "3. Sair" << endl;
        cout << "Escolha uma opcao: ";
        cin >> opcao;

        switch (opcao) {
            case 1: {
                int f, c;
                cout << "Digite a fileira (0-4): ";
                cin >> f;
                cout << "Digite a coluna (0-4): ";
                cin >> c;

                if (f < 0 || f > 4 || c < 0 || c > 4) {
                    cout << "Posicao invalida!" << endl;
                } else if (sala[f][c] == 0) {
                    sala[f][c] = 1;
                    cout << "Sucesso!" << endl;
                } else {
                    cout << "Erro: Assento ocupado!" << endl;
                }
                break;
            }

            case 2:
                cout << "\nMapa da Sala:" << endl;
                cout << "  ";
                for (int c = 0; c < 5; c++)
                    cout << "[" << c << "] ";
                cout << endl;

                for (int f = 0; f < 5; f++) {
                    cout << f << " ";
                    for (int c = 0; c < 5; c++) {
                        if (sala[f][c] == 0)
                            cout << "[0] ";
                        else
                            cout << "[1] ";
                    }
                    cout << endl;
                }
                break;

            case 3:
                cout << "Saindo..." << endl;
                break;

            default:
                cout << "Opcao invalida!" << endl;
        }

    } while (opcao != 3);

    // Relatorio Final
    int ocupados = 0, vazios = 0;
    for (int f = 0; f < 5; f++)
        for (int c = 0; c < 5; c++)
            if (sala[f][c] == 1) ocupados++;
            else vazios++;

    cout << "\n===== RELATORIO FINAL =====" << endl;
    cout << "Assentos ocupados: " << ocupados << endl;
    cout << "Assentos vazios:   " << vazios << endl;

    return 0;
}