/// Returns number of iterations to reduce value to 1
///
/// Call on i32 values 
/// 
/// Operates according to the following pattern:
/// If integer is 1, stop
/// If integer is even, divide by 2, repeat
/// If integer is odd, multiply by 3 and add 1, repeat
///
/// # Examples
///
/// Root case
///
/// ```
/// use rust_version::trial;
/// let runs: i32 = trial(1);
/// assert_eq!(runs, 0);
/// ```
///
///
/// Basic case
///
/// ```
/// use rust_version::trial;
/// let runs: i32 = trial(5);
/// assert_eq!(runs, 5);
/// ```
///
pub fn trial(value:i32) -> i32 {
  let mut val = value;
  let mut runs = 0;
  while val > 1 {
    if val % 2 == 0 {
      val /= 2;
    } else {
      val = (val * 3) + 1;
    }
    runs += 1;
  }
  runs
}

#[test]
fn it_works() {
    for results in vec![(1,0), (2,1), (3,7), (4,2), (5,5), (6,8), (7,16), (8,3), (9,19), (10,6)]
                    .into_iter()
                    .map(|pair| { (pair.0, trial(pair.0), pair.1) }) {
        assert_eq!(results.1,results.2);
    }
}