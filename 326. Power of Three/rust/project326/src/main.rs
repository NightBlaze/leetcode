fn main() {
    println!("27 is power of three: {}", is_power_of_three(27));
    println!("42 is power of three: {}", is_power_of_three(27));
}

fn is_power_of_three(n: i32) -> bool {
    let mut n = n;

    if n < 1 {
        return false
    }
    
    while n % 3 == 0 {
        n /= 3;
    }
    
    n == 1
}