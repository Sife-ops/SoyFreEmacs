;;; package --- Summary

;;; Commentary:
;; Configuration for doc-view.

;;; Code:

(add-hook 'doc-view-mode-hook 'auto-revert-mode)
(add-hook 'doc-view-mode-hook 'doc-view-fit-page-to-window)
	  ;; (lambda ()
	    ;; (auto-revert-mode)
	    ;; (doc-view-fit-page-to-window)))

(provide 'init-doc-view)

;;; init-avy.el ends here
