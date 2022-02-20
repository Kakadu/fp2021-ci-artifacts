#use "topfind";;
#require "yojson";;
#require "stdio";;
#require "unix";;
open Stdio;;

let of_file name =
  Stdio.In_channel.(read_lines name) |> List.map Yojson.Safe.from_string

(* module H = Hashtbl.Make(struct include String let hash = Hashtbl.hash end ) *)
module H = Map.Make(String)

let count jsons =
  let normalize ~prefix k =
    if String.starts_with k ~prefix then prefix else k
  in
  let add h k  =
    let k =
      String.trim k
      |> normalize ~prefix:"Performance issue. It's recommended to rewrite"
      |> normalize ~prefix:"Unsafe ingore."
      |> normalize ~prefix:"Rewrite record as"
      |> normalize ~prefix:"Using mutable data structures for teaching purposes is usually discouraged"
      |> (fun k -> if Str.(string_match (regexp "Identifier `_[a-z]*`.*") k 0)
            then "Identifier starting with `_` misused." else k)
      |> (fun k -> if Str.(string_match (regexp "Constructor '[A-Za-z]*' has no documentation attribute") k 0)
            then "Constructor has no documentation attribute" else k)
    in
    match H.find k h with
    | exception Not_found -> H.add k 1 h
    | n -> H.add k (n+1) h
  in
  jsons |> List.fold_left (fun acc -> function
  | `Assoc ( ("message", `String m) :: _) -> add acc m
  | j ->
      Yojson.Safe.to_string j |> print_endline;
      assert false
  ) H.empty

let report db : unit =
  Out_channel.with_file "/tmp/a.csv" ~f:(fun ch -> H.iter (Out_channel.fprintf ch "'%s', %d\n%!") db)

let format_buf f =
  let b = Buffer.create 100 in
  f (Format.formatter_of_buffer b);
  Buffer.contents b

let report_qml db =
  let wrap ~is_bad db =
    let db = H.filter (fun k _ -> not (is_bad k) ) db in
    let sum = H.fold (fun _ v acc -> float_of_int v +. acc) db 0.0 in
    format_buf (fun ppf ->
      let f = Format.fprintf ppf "PieSlice { label: %S; value: %f }\n%!" in
      H.iter (fun text v -> f text (float_of_int v *. 100. /. sum)) db;
    )
  in
  let template =
    let without_largest = function
    | "Using `function` is recommended"
    | "Using failwith unsafely"
    | "Using generic equality for type bool and other algebraic data types is not recommended. Use pattern matching"
    | "Using mutable data structures for teaching purposes is usually discouraged" -> true
    | _ -> false in
    In_channel.read_all "Plot.template.qml"
    |> Str.global_replace (Str.regexp "/\\*TEMPLATE1\\*/") (wrap ~is_bad:(fun _ -> false) db)
    |> Str.global_replace (Str.regexp "/\\*TEMPLATE2\\*/") (wrap ~is_bad:without_largest db)
  in

  let open Out_channel in
  with_file "Plot.qml" ~f:(fun ch -> Out_channel.(output_string ch template))

let () =
  let files = Unix.open_process_in "find . -iwholename './*/*.json'" |> Stdio.In_channel.(input_lines) in
  let jsons = List.concat_map of_file files in
  Format.printf "There are %d lints in %d files\n%!" (List.length jsons) (List.length files);
  let db = count jsons in
  report db;
  report_qml db;
  ()
