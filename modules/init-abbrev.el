;;; package --- Summary

;;; Commentary:
;; Configuration for abbrev.
;; https://www.emacswiki.org/emacs/SkeletonMode

;;; Code:

;; (setq-default abbrev-mode t)

(add-to-list 'load-path (concat user-emacs-directory "abbrev/"))
(require 'abbrev-elisp)
(require 'abbrev-shell)
(require 'abbrev-web)

(provide 'init-abbrev)

;;; abbrev.el ends here
