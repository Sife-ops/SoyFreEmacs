;;; package --- Summary

;;; Commentary:
;; Configuration for pdf-tools.

;;; Code:

(use-package pdf-tools
  :ensure t
  :config
  (pdf-tools-install)
  (add-hook 'pdf-view-mode-hook 'pdf-view-midnight-minor-mode))

(provide 'init-pdf-tools)

;;; init-pdf-tools.el ends here
