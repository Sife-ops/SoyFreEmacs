;;; package --- Summary

;;; Commentary:
;; Configuration for avy.

;;; Code:

(require 'dired-x)
(add-hook 'dired-mode-hook 'dired-hide-details-mode)
(add-hook 'dired-mode-hook 'auto-revert-mode)
(add-hook 'dired-mode-hook '(lambda () (dired-omit-mode)))
;; (setq dired-omit-files (concat dired-omit-files "\\|^\\..+$"))

(provide 'init-dired)

;;; init-dired.el ends here.
