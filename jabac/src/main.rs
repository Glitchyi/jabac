use std::env;
fn main() {r
    let files = args
        .iter()
        .filter(|x| x.contains(".c"))
        .map(|x| x.to_string())
        .collect::<Vec<String>>();
    if args.contains(&String::from("-c")) {
        println!("{:?}", files);
    }
}
