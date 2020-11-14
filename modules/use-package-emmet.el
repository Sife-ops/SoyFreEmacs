;;; package --- Summary

;;; Commentary:
;; Configuration for beacon.

;;; Code:

;; https://github.com/smihica/emmet-mode
(use-package emmet-mode
  :ensure t
  :config
  (add-hook 'mhtml-mode-hook 'emmet-mode))

(provide 'init-emmet)

;;; init-emmet.el ends here
