use std::io;

fn calcular_media(nota1: f64, nota2: f64, nota3: f64) -> f64 {
    let npt = (nota1 + nota2) / 2.0;
    let media_final = npt * 0.7 + nota3 * 0.3;
    media_final
}

fn main() {
    let mut n1 = String::new();
    println!("Digite a nota NP1:");
    io::stdin().read_line(&mut n1).unwrap();
    let n1: f64 = n1.trim().parse().unwrap();

    let mut n2 = String::new();
    println!("Digite a nota NP2:");
    io::stdin().read_line(&mut n2).unwrap();
    let n2: f64 = n2.trim().parse().unwrap();

    let mut n3 = String::new();
    println!("Digite a nota NPL:");
    io::stdin().read_line(&mut n3).unwrap();
    let n3: f64 = n3.trim().parse().unwrap();

    let npt = (n1 + n2) / 2.0;
    let media = calcular_media(n1, n2, n3);

    println!("Media final: {}", media);

    if npt >= 60.0 && n3 >= 60.0 {
        println!("Parabens, voce foi aprovado!");
    } else {
        println!("Voce foi reprovado.");
    }
}