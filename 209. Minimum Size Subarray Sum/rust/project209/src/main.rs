use std::i32;

fn main() {
    let target = 7;
    let nums = Vec::from([2,3,1,2,4,3]);
    let result = min_sub_array_len(target, nums);
    println!("{}", result);
}

fn min_sub_array_len(target: i32, nums: Vec<i32>) -> i32 {
    if nums.is_empty() {
        return 0;
    }
    let mut result = i32::MAX;
    let mut left = 0;
    let mut sum = 0;
    for right in 0..nums.len() {
        sum += nums[right];
        while sum >= target {
            result = result.min((right - left + 1) as i32);
            sum -= nums[left];
            left += 1;
        }
    }
    if result == i32::MAX {
        0
    } else {
        result
    }
}