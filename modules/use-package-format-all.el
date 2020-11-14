;;; package --- Summary

;;; Commentary:
;; Configuration for format-all.

;;; Code:
(use-package format-all
  :ensure t)

(global-set-key (kbd "C-;") 'format-all-buffer) ; was 'find-alternate-file'

(provide 'init-format-all)
;;; init-format-all.el ends here
