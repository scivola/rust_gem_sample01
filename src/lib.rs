use rand_distr::{Normal, Distribution};

#[no_mangle]
pub extern fn rand_norm(variance: f64) -> f64 {
    let normal = Normal::new(0.0, variance).unwrap();
    normal.sample(&mut rand::thread_rng())
}
