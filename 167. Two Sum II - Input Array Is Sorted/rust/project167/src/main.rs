fn main() {
    let numbers = vec![1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
    let target = 5;
    let result = two_sum(numbers, target);
    println!("{:?}", result);
}

fn two_sum(numbers: Vec<i32>, target: i32) -> Vec<i32> {
    let mut left = 0;
    let mut right = numbers.len() - 1;
    while left < right {
        let sum = numbers[left] + numbers[right];
        if sum == target {
            return vec![(left+1) as i32, (right+1) as i32]
        }
        if sum > target {
            right -= 1;
        } else {
            left += 1;
        }
    }
    vec![]
}