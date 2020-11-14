;;; package --- Summary

;;; Commentary:
;; Configuration for latex-preview-pane.

;;; Code:

(use-package latex-preview-pane
  :ensure t
  :config
  
  (latex-preview-pane-enable)
  
  ;; (add-hook 'LaTeX-mode-hook
  ;; 	    (lambda ()
  ;; 	      (latex-preview-pane-mode)))

  )

(provide 'init-latex-preview-pane)

;;; init-avy.el ends here
