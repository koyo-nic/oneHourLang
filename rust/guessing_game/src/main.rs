use std::io;
use std::cmp::Ordering;
use rand::Rng;

fn main() {
    println!("Geuss the number !");

    let secret_number = rand::thread_rng().gen_range(0, 150);

    // println!("The secret number is: {}", secret_number);
    
    loop{
        println!("Please input your guess");
    
        let mut guess = String::new();
        
        io::stdin()
            .read_line(&mut guess)
            .expect("Failed to read line");
        
        // handle errors in case of non numeric entries

        let guess: u32 = match guess.trim().parse(){
            Ok(num) => num,
            Err(_) => continue,
        };
    
        println!("You guessed: {}",  guess);
    
        match guess.cmp(&secret_number) {
            Ordering::Less => println!("too small bruv"),
            Ordering::Greater => println!("extra big bruv"),
            Ordering::Equal => {
                println!("Great you guessed right");
                break;
            }
        }
    }
}

        