open Tyxml.Html
type t = En|Fr
exception Unknown_language of string
let string_of_language = function 
| En -> "en"| Fr -> "fr"
let language_of_string = function
| "en" -> En| "fr" -> Fr| s -> raise (Unknown_language s)
let guess_language_of_string s = 
try language_of_string s 
with Unknown_language _ as e -> 
try language_of_string (String.sub s 0 (String.index s '-')) 
with Not_found -> 
raise e 
let languages = [En;Fr]
let default_language = Fr
let _language_ = default_language 
let get_language () = default_language
let set_language () = ()

let txt = txt 
module Tr = struct
let my_site_title ?(lang = get_language ()) ()  () =
match lang with
| En -> [txt "A wonderful web page"]
| Fr -> [txt "Une page Web fabuleuse"]
let my_page_title ?(lang = get_language ()) ()  () =
match lang with
| En -> [txt "A wonderful title"]
| Fr -> [txt "Un titre fabuleux"]
let my_content ?(lang = get_language ()) ()  () =
match lang with
| En -> [txt "This is a wonderful content"]
| Fr -> [txt " Ceci est un contenu fabuleux"]
module S = struct
let my_site_title ?(lang = get_language ()) ()  () =
match lang with
| En -> "A wonderful web page"
| Fr -> "Une page Web fabuleuse"
let my_page_title ?(lang = get_language ()) ()  () =
match lang with
| En -> "A wonderful title"
| Fr -> "Un titre fabuleux"
let my_content ?(lang = get_language ()) ()  () =
match lang with
| En -> "This is a wonderful content"
| Fr -> " Ceci est un contenu fabuleux"
end
end
