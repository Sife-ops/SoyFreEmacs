;;; package --- Summary

;;; Commentary:
;; define abbrev for specific major mode
;; the first part of the name should be the value of the variable major-mode of that mode
;; e.g. for go-mode, name should be go-mode-abbrev-table

;;; Code:

(when (boundp 'latex-mode-abbrev-table)
  (clear-abbrev-table latex-mode-abbrev-table))

(define-skeleton env_la "environment tag" nil
  "\\begin{<==>}
" _ "
\\end{<==>}")

(define-skeleton template00_la "template00" nil
  "\\documentclass{" _ "}

%\\usepackage{<++>}

\\title{<++>}
\\date{<++>}
\\author{<++>}

\\begin{document}

%\\pagenumbering{gobble}
\\maketitle

%\\newpage
%\\pagenumbering{arabic}

\\section{<++>}

\\end{document}")

(define-abbrev-table 'latex-mode-abbrev-table
  '(
    ("00" "" template00_la)    
    ("env" "" env_la)
    )
  )

(setq save-abbrevs nil)

(provide 'abbrev-tex)

;;; abbrev-tex.el ends here.
