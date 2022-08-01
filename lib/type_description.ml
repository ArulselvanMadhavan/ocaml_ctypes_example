open Ctypes

module Types (F : TYPE) = struct
  open F

  let foo_version = constant "FOO_VERSION" int
end
