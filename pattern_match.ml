(* #use"pattern_match.ml";; で実行 *)
let add pair = match pair with
  (a, b) -> a + b

let test1 = add (10, 3) = 13
let test2 = add (0, 3) = 3
let test3 = add (-5, 3) = -2