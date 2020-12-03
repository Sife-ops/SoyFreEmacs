;;; package --- Summary

;;; Commentary:
;; Configuration for ido-vertical-mode.

;;; Code:

(use-package ido-vertical-mode
  :ensure t
  :config
  (ido-vertical-mode 1)
  (setq ido-vertical-define-keys 'C-n-and-C-p-only))

(provide 'init-ido-vertical)

;;; init-ido-vertical.el ends here
