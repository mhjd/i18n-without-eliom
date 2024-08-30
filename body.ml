open Header 
module Tr = struct
let my_site_title ?(lang = Header.get_language ()) ()  () =
match lang with
| Header.En -> [txt "A wonderful web page"]
| Header.Fr -> [txt "Une page Web fabuleuse"]
let my_page_title ?(lang = Header.get_language ()) ()  () =
match lang with
| Header.En -> [txt "A wonderful title"]
| Header.Fr -> [txt "Un titre fabuleux"]
let my_content ?(lang = Header.get_language ()) ()  () =
match lang with
| Header.En -> [txt "This is a wonderful content"]
| Header.Fr -> [txt " Ceci est un contenu fabuleux"]
module S = struct
let my_site_title ?(lang = Header.get_language ()) ()  () =
match lang with
| Header.En -> "A wonderful web page"
| Header.Fr -> "Une page Web fabuleuse"
let my_page_title ?(lang = Header.get_language ()) ()  () =
match lang with
| Header.En -> "A wonderful title"
| Header.Fr -> "Un titre fabuleux"
let my_content ?(lang = Header.get_language ()) ()  () =
match lang with
| Header.En -> "This is a wonderful content"
| Header.Fr -> " Ceci est un contenu fabuleux"
end
end
