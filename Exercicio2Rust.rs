use std::io;

fn eh_impar(numero: i32) -> bool {
    numero % 2 != 0
}

fn main() {
    let mut escolha = String::new();
    println!("Jogador 1 escolha par ou impar:");
    io::stdin().read_line(&mut escolha).unwrap();
    let escolha = escolha.trim();

    let mut n1 = String::new();
    println!("Jogador 1 digite um numero:");
    io::stdin().read_line(&mut n1).unwrap();
    let n1: i32 = n1.trim().parse().unwrap();

    let mut n2 = String::new();
    println!("Jogador 2 digite um numero:");
    io::stdin().read_line(&mut n2).unwrap();
    let n2: i32 = n2.trim().parse().unwrap();

    let soma = n1 + n2;

    let resultado_impar = eh_impar(soma);

    if (resultado_impar && escolha == "impar") || (!resultado_impar && escolha == "par") {
        println!("Soma: {}", soma);
        println!("Jogador 1 venceu");
    } else {
        println!("Soma: {}", soma);
        println!("Jogador 2 venceu");
    }
}