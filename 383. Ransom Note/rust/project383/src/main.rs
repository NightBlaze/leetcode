fn main() {
    help_test(String::from("a"), String::from("b"));
	help_test(String::from("aa"), String::from("ab"));
	help_test(String::from("aa"), String::from("aab"));
}

fn help_test(ransom_note: String, magazine: String) {
	println!("can_construct `{}` from `{}`: {}", ransom_note.clone(), magazine.clone(), can_construct(ransom_note, magazine));
}

fn can_construct(ransom_note: String, magazine: String) -> bool {
    if magazine.len() < ransom_note.len() {
        return false
    }

	let mut ransom_note = ransom_note;
    for m in magazine.chars() {
        match ransom_note.find(m) {
            None => {},
            Some(index) => {
                ransom_note.remove(index);
				if ransom_note.len() == 0 {
					return true
				}
            },
        }
    }

	ransom_note.len() == 0
}
