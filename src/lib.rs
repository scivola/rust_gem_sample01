use rand_distr::{Normal, Distribution};

#[no_mangle]
pub extern fn rand_norm(standard_deviation: f64) -> f64 {
    let normal = Normal::new(0.0, standard_deviation).unwrap();
    normal.sample(&mut rand::thread_rng())
}
