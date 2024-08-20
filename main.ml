open Tyxml.Html
let mytitle = title (txt [%i18n my_site_title])

let mycontent =
  div ~a:[a_class ["content"]] [
    h1 [txt [%i18n my_page_title]] ;
    txt [%i18n my_content] 
  ]
let mypage =
  html
    (head mytitle [])
    (body [mycontent])

let () =
  let file = open_out "index.html" in
  let fmt = Format.formatter_of_out_channel file in
  pp () fmt mypage;
  close_out file

(* ocamlfind ocamlc -package tyxml,ocsigen-i18n -ppx "ppx_ocsigen_i18n --default-module YourModuleName" -linkpkg main.ml *)
(*  *)
