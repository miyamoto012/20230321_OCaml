(* #use"record.ml";; で実行 *)

(* レコード型の定義 *)
(* ユーザデータ（名前、年齢）を表す型 *)
type user = {
  name : string;    (* 名前 *)
  old : int;        (* 年齢 *)
}

let record = {name = "namae"; old = 20}

(* 目的：user型のデータを用いて「nameさんはold才です」 *)
(* と文字列を作成する *)
(* print_user_info : user -> string *)
let print_user_info u = match u with
  {name = n; old = o} ->
  n ^ "さんは" ^ string_of_int o ^ "才です"

let test1_1 = print_user_info {name="A"; old=15}
          = "Aさんは15才です"

(* 目的：ユーザが成人しているかチェックする *)
(* is_adult : user -> bool *)
let is_adult u = match u with
  (* name = n; は省略できるが残した方がプログラムが見やすくなる *)
  {name = n; old = o} ->
  if o >= 18 then true else false

let test2_1 = is_adult {name="A"; old=15} = false
let test2_2 = is_adult {name="B"; old=17} = false
let test2_3 = is_adult {name="C"; old=18} = true

