use std::io;

fn verificar_senha(senha: &str) -> bool {
    if senha.len() < 10 {
        return false;
    }

    let mut numeros = 0;
    let mut maiuscula = false;

    for c in senha.chars() {
        if c.is_digit(10) {
            numeros += 1;
        }
        if c.is_ascii_uppercase() {
            maiuscula = true;
        }
    }

    numeros >= 2 && maiuscula
}

fn main() {
    loop {
        println!("Digite uma senha:");

        let mut senha = String::new();
        let bytes = io::stdin().read_line(&mut senha).unwrap();

        if bytes == 0 {
            break;
        }

        let senha = senha.trim();

        if verificar_senha(senha) {
            println!("A senha e valida, seja bem vindo!");
            break;
        } else {
            println!("Senha invalida, tente novamente.");
        }
    }
}