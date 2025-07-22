use log::info;

fn main() {
    env_logger::init();

    info!("Hello, Titanic!");
}

#[cfg(test)]
mod tests {
    #[test]
    fn always_passing() {
        assert!(true);
    }
}
