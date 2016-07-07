mod lib;

fn main() {
    println!("Starting demo");
    
    // println!("Trial for 2 took {} runs", lib::trial(2));
    // println!("Trial for 5 took {} runs", lib::trial(5));
    // 
    
    for results in vec![1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
                    .into_iter()
                    .map(|val| { (val, lib::trial(val)) }) {
        println!("For value {}, {} runs were required", results.0, results.1);
    }
}
