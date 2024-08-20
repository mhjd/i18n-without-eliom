open Tyxml.Html

let mytitle = title (txt ([%i18n S.my_site_title]))

let mycontent =
  div ~a:[a_class ["content"]] [
    h1 [txt ([%i18n S.my_page_title])] ;
    txt ([%i18n S.my_content])
  ]

let mypage =
  html
    (head mytitle [])
    (body [mycontent])

let () =
  let file = open_out "index.html" in
  let fmt = Format.formatter_of_out_channel file in
  Tyxml.Html.pp () fmt mypage;
  close_out file
