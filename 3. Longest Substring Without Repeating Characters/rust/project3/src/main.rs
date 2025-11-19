use std::collections::HashMap;

fn main() {
    let result = length_of_longest_substring("abcabcbb".to_owned());
    println!("{result}");
}

pub fn length_of_longest_substring(s: String) -> i32 {
    if s.is_empty() {
        return 0;
    }
    let mut max_length = 0;
    let mut left = 0;
    let mut last_seen = HashMap::<char, usize>::new();
    for (right, c) in s.chars().enumerate() {
        if let Some(&prev_left) = last_seen.get(&c) {
            left = left.max(prev_left + 1);
        }
        last_seen.insert(c, right);
        max_length = max_length.max(right - left + 1);
    }
    max_length as i32
}