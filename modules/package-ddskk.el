;;; package --- Summary

;;; Commentary:
;; Configuration for DDSKK
;; https://ddskk.readthedocs.io/ja/latest/05_basic.html

;;; Code:

(unless (or (package-installed-p 'ddskk)
            (require 'ddskk nil 'noerror))
  (unless (assoc 'ddskk package-archive-contents)
    (package-refresh-contents))
  (package-install 'ddskk))

(require 'skk)
(setq skk-get-jisyo-directory (concat user-emacs-directory "skk-get-jisyo/"))
(setq skk-large-jisyo (concat user-emacs-directory "skk-get-jisyo/SKK-JISYO.L"))

(provide 'init-ddskk)

;;; init-ddskk.el ends here.
