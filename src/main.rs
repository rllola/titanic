fn main() {
    println!("Hello, world!");
}

#[cfg(test)]
mod tests {
    #[test]
    fn always_passing() {
        assert!(true);
    }
}
