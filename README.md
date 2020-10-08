# RustGemSample01

この gem は FFI を経由して Rust で書かれたライブラリーを Ruby から利用するサンプルとして作られました。

This gem is a sample for calling a Rust library from Ruby.

実用目的ではなく，Ruby と Rust の連携方法を探るための例です。

It is not for practical use, but for exploring a method of connection between Ruby and Rust.

## Installation

この gem は RubyGems.org では提供されていません。

This gem is not provided at RubyGems.org.

gem をインストールするには，リポジトリーをクローンして

```
rake install
```

してください。

To install this, clone the repository, and

```
rake install
```

この gem は一部が Rust で書かれていますが，gem のインストール時に Rust のコンパイルが行われます。したがって，環境に Rust がインストールされていなければなりません。

This gem is partially written in Rust. When this gem is installed, the Rust code will be compiled. So Rust should be installed.

## Usage

```rb
require "rust_gem_sample01"

variance = 2.0

p RustGemSample01.rand_norm(variance)
# => -3.1674786173729506
```

`RustGemSample01` モジュールの特異メソッド `rand_norm` は正規分布の乱数を返します。

`rand_norm`, which is a singleton method of `RustGemSample01` module, returns a random number of normal distribution.

引数に分散（標準偏差の 2 乗）を与えます。平均値は 0 に固定です。
Rust 側ではこの引数は f64（64 ビット浮動小数点数型）ですが，Ruby 側では Float でも Rational でも Integer でもかまいません。

The argument is a variance, namely squared standard deviation, of the distribution. The average of the distribution assumed to be zero.
The Rust function requires f64 (64 bit floating point number). However you can give a Float, Integer, or Rational object to the Ruby method.

## Contributing

バグレポートとプルリクエストを https://github.com/scivola/rust_gem_sample01 で受け付けています。
英文の修正も歓迎します。

Bug reports and pull requests are welcome on GitHub at https://github.com/scivola/rust_gem_sample01.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
