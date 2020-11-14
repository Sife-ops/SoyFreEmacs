;;; package --- Summary

;;; Commentary:
;; define abbrev for specific major mode
;; the first part of the name should be the value of the variable major-mode of that mode
;; e.g. for go-mode, name should be go-mode-abbrev-table

;;; Code:

(when (boundp 'mhtml-mode-abbrev-table)
  (clear-abbrev-table mhtml-mode-abbrev-table))

(define-skeleton radio_web "radio button" nil
  "<label for=\"" _ "\">
    <input id=\"<++>\" type=\"radio\" name=\"<++>\" value=\"<++>\"><++>
</label>")

(define-skeleton check_web "check box" nil
  "<label for=\"" _ "\">
    <input id=\"<++>\" type=\"checkbox\" name=\"<++>\" value=\"<++>\"><++>
</label>")

(define-skeleton a_web "a tag" nil
  "<a " _ "href=\"https://<++>\"><++></a>")

(define-skeleton ai_web "a tag with id" nil
  "<a id=\"" _ "\" href=\"https://<++>\"><++></a>")

(define-skeleton ac_web "a tag with class" nil
  "<a class=\"" _ "\" href=\"https://<++>\"><++></a>")

(define-skeleton aic_web "a tag with id and class" nil
  "<a id=\"" _ "\" class=\"<++>\" href=\"https://<++>\"><++></a>")

(define-skeleton attribute_web "attribute" nil
  "" _ "=\"<++>\"")

(define-skeleton button_web "button element" nil
  "<button" _ "><++></button>")

(define-skeleton dd_web "dd tag" nil
  "<dd>" _ "</dd>")

(define-skeleton dc_web "div tag with class" nil
  "<div class=\"" _ "\"><++></div>")

(define-skeleton div_web "div tag" nil
  "<div " _ "><++></div>")

(define-skeleton di_web "div tag with id" nil
  "<div id=\"" _ "\"><++></div>")

(define-skeleton dic_web "div tag with id and class" nil
  "<div id=\"" _ "\" class=\"<++>\"><++></div>")

(define-skeleton dl_web "dl tag" nil
  "<dl>" _ "</dl>")

(define-skeleton dt_web "dt tag" nil
  "<dt>" _ "</dt>")

(define-skeleton form_web "form element" nil
  "<form " _ "><++></form>")

(define-skeleton h_web "h tag" nil
  "<h" _ "><++></h<++>>")

(define-skeleton html5_web "html:5" nil
"<!doctype html>
<html lang=\"en\">
  <head>
    <meta charset=\"UTF-8\"/>
    <title>" _ "</title>
  </head>
  <body>
  <++>
  </body>
</html>")

(define-skeleton img_web "img tag" nil
  "<img src=\"" _ "\" alt=\"<++>\">")

(define-skeleton input_web "input element" nil
  "<input " _ ">")

(define-skeleton label_web "label element" nil
  "<label for=\"" _ "\"><++></label>")

(define-skeleton li_web "li tag" nil
  "<li>" _ "</li>")

(define-skeleton main_web "main tag" nil
  "<main>" _ "</main>")

(define-skeleton ol_web "ol tag" nil
  "<ol>" _ "</ol>")

(define-skeleton p_web "p tag" nil
  "<p>" _ "</p>")

(define-skeleton table_web "table tag" nil
  "<table>" _ "</table>")

(define-skeleton td_web "td tag" nil
  "<td>" _ "</td>")

(define-skeleton tr_web "tr tag" nil
  "<tr>" _ "</tr>")

(define-skeleton ul_web "ul tag" nil
  "<ul>" _ "</ul>")

(define-abbrev-table 'mhtml-mode-abbrev-table
  '(
    ("a" "" a_web)
    ;; ("ac" "" ac_web)
    ;; ("ai" "" ai_web)
    ;; ("aic" "" aic_web)
    ("at" "" attribute_web)
    ("btn" "" button_web)
    ("brk" "<br>")
    ("chk" "" check_web)
    ("div" "" div_web)
    ;; ("dc" "" dc_web)
    ("dd" "" dd_web)
    ;; ("di" "" di_web)
    ;; ("dic" "" dic_web)
    ("dl" "" dl_web)
    ("dt" "" dt_web)
    ("frm" "" form_web)
    ("h" "" h_web)
    ("html5" "" html5_web)
    ("inp" "" input_web)
    ("img" "" img_web)
    ("lbl" "" label_web)
    ("li" "" li_web)
    ("lorem" "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
    ("ol" "" ol_web)
    ("main" "" main_web)
    ("p" "" p_web)
    ("radio" "" radio_web)
    ("tbl" "" table_web)
    ("td" "" td_web)
    ("tr" "" tr_web)
    ("ul" "" ul_web)
    ))

(setq save-abbrevs nil)

(provide 'abbrev-web)

;;; abbrev-web.el ends here.
