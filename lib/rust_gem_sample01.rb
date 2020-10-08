require "ffi"
require "rust_gem_sample01/version"

module RustGemSample01
  extend FFI::Library

  lib_name = "rand_distr_for_ruby"
  file_name =
    case RbConfig::CONFIG["host_os"].downcase
    when /darwin/      then "lib#{lib_name}.dylib"
    when /mingw|mswin/ then "#{lib_name}.dll"
    when /cygwin/      then "cyg#{lib_name}.dll"
    else                    "lib#{lib_name}.so"
    end

  ffi_lib File.expand_path(file_name, __dir__)

  attach_function :rand_norm, [:double], :double
end
