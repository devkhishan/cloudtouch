use std::io;

fn main(){
    let num1 : i32= read_integer(); 
    let num2 : i32= read_integer(); 

    println!("{}",num1+num2);
}

fn read_integer() -> i32 {
    let  mut input = String::new(); 

    io::stdin().read_line(&mut input).expect("Error"); 
    match input.trim().parse() {
        Ok(num) => num, 
        Err(_) => std::process::exit(1)
    }
}