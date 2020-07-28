// CLI text parser clone for grep
// learn rust in 15 minutes:: ref:https://rust-cli.github.io/book/tutorial/cli-args.html
// use std::path::PathBuf;
use structopt::StructOpt;

/// Search for a pattern in a file and display the lines that contain it.
#[derive(StructOpt)]
struct Cli{
    /// The pattern to look for
    #[structopt(short = "t", long = "pattern")]
    pattern: String,
    /// The path to the file to read
    #[structopt(parse(from_os_str))]
    #[structopt(short = "p", long = "filepath")]
    path: std::path::PathBuf,
}

fn main() {

    let pattern = std::env::args().nth(1).expect("no pattern given");
    let path = std::env::args().nth(2).expect("no path given");
    let args = Cli::from_args();
    println!("Hello, world!");
    println!("{0} is the path and {1} is the pattern", path, pattern);
    let content = std::fs::read_to_string(&args.path).expect("Could not read file");

    for line in content.lines(){
        if line.contains(&args.pattern) {
            println!("{}", line)
        }
    }
}
