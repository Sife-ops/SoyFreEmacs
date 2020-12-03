;;; package --- Summary

;;; Commentary:
;; define abbrev for specific major mode
;; the first part of the name should be the value of the variable major-mode of that mode
;; e.g. for go-mode, name should be go-mode-abbrev-table

;;; Code:

(when (boundp 'emacs-lisp-mode-abbrev-table)
  (clear-abbrev-table emacs-lisp-mode-abbrev-table))

(define-skeleton test_el "test" nil
  "\\begin{<==>}
" _ "
\\end{<==>}")

(define-skeleton defadvice_el "defadvice" nil
  "(defadvice " _ " (<++>)
  <++>
  )
")

(define-skeleton defun_el "defun" nil
  "(defun " _ " (<++>)
  \"<++>\"
  (interactive)
  <++>
  )
")

(define-skeleton define-skeleton_el "define-skeleton" nil
  "(define-skeleton " _ " \"<++>\" nil
  \"<++>\" _ \"<++>\")")

(define-skeleton if_el "if" nil
  "(if " _ ")")

(define-skeleton message_el "message" nil
  "(message \"%s\" " _ ")")

(define-skeleton re-search-forward_el "re-search-forward" nil
  "(re-search-forward \"" _ "\")")

(define-skeleton search-forward_el "search-forward" nil
  "(search-forward \"" _ "\")")

(define-skeleton setq_el "setq" nil
  "(setq " _ ")")

(define-skeleton unless_el "unless" nil
  "(unless " _ ")")

(define-skeleton while_el "while loop" nil
  "(while " _ ")")

(define-abbrev-table 'emacs-lisp-mode-abbrev-table
  '(
    ("test" "" test_el)
    ("def" "" defun_el)
    ("defad" "" defadvice_el)
    ("dsk" "" define-skeleton_el)
    ("ifs" "" if_el)
    ("mes" "" message_el)
    ("rsf" "" re-search-forward_el)
    ("sq" "" setq_el)
    ("sf" "" search-forward_el)
    ("ul" "" unless_el)
    ("whs" "" while_el)
    )
  )

(setq save-abbrevs nil)

(provide 'abbrev-elisp)

;;; init-abbrev-elisp.el ends here.
