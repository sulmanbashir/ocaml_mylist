type 'a my_list =
 | Item of ('a * 'a my_list)
 | Empty

let koalas_ocaml = Item ("Kofuri", Item ("Joa", Item ("db0", Empty)))

let length list = let rec nb_elem list size = match list with
 | Empty -> size
 | Item (a, b) -> nb_elem b (size + 1) in nb_elem list 0


let hd = function
 | Empty -> failwith "hd"
 | Item (a, b) -> a

let tl = function
 | Empty -> failwith "tl"
 | Item (a, b) -> b

