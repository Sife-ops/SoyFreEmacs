;;; package --- Summary

;;; Commentary:
;; Pretty symbols.

;;; Code:

(global-prettify-symbols-mode 1)

(add-hook 'emacs-lisp-mode-hook
	  (lambda () 
	    (setq prettify-symbols-alist
		  '(
		    ("<++>" . 12295) ; 〇
		    ("case" . 20214) ; 件
		    ("error" . 35492) ; 誤
		    ("if" . 33509) ; 若
		    ("unless" . 38480) ; 限
		    ("not" . 19981) ; 不
		    ("and" . 21644) ; 和
		    ("or" . 25110) ; 或
		    ("provide" . 25552) ; 提
		    ("require" . 35201) ; 要
		    ("let" . 35377) ; 許
		    ("while" . 38291) ; 間
		    ("when" . 26178) ; 場合 時
		    ("cond" . 26465) ; 条
		    ("defun" . 38306) ; 関
		    ("lambda" . 955) ; λ
		    ;; ("setq" . 22793) ; 変
		    ))
	    ))

(add-hook 'sh-mode-hook
	  (lambda () 
	    (setq prettify-symbols-alist
		  '(
		    ("<++>" . 12295) ; 〇
		    ("case" . 20214) ; 件
		    ("if" . 33509) ; 若
		    ("else" . 20182) ; 他
		    ("elif" . 36949) ; 違
		    ("!" . 19981) ; 不
		    ("&&" . 21644) ; 和
		    ("||" . 25110) ; 或
		    ("while" . 38291) ; 間
		    ;; ("cond" . 26465) ; 条
		    ("function" . 38306) ; 関
		    ))
	    ))

(provide 'init-prettify)

;;; init-prettify.el ends here.
