open Ocaml_ctypes_example

let () =
  if C.Type.foo_version <> 1 then
    failwith "Unknown foo version"
  else
    match C.Function.foo_init () with
    | 0 ->
      let _ = C.Function.foo_fnubar (Some "Ctypes example") in
      C.Function.foo_exit ()
    | err_code -> Printf.printf "Foo init failed with error code %d\n" err_code
