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
let get_language () = _language_
let set_language () = ()

let txt = txt 
