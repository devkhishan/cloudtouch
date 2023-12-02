use std::io; 

fn main(){
    let mut name = String::new(); 

    io::stdin().read_line(&mut name).expect("Error"); 
    println!("My name is {name}")

    let val = 10; 
    let val1 = 11; 

    println!("{}",val+val1);
}
