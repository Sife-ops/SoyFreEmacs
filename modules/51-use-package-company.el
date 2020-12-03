;;; package --- Summary

;;; Commentary:
;; Configuration for company mode.

;;; Code:

(use-package company
  :ensure t
  :config
  (add-hook 'after-init-hook 'global-company-mode)

  (setq company-idle-delay 0)
  (setq company-minimum-prefix-length 1)
  (setq company-global-modes '(not org-mode)))

(provide 'init-company)

;;; init-company.el ends here

  ; (use-package company-anaconda
  ;   :ensure t
  ;   :config
  ;   (eval-after-load "company"
	; '(add-to-list 'company-backends 'company-anaconda))
  ;   (add-hook 'python-mode-hook 'anaconda-mode)))

;; (use-package ac-js2
;;   :ensure t
;;   :config
;;   (add-to-list 'company-backends 'ac-js2-company))

;; (use-package company-flow
;;   :ensure t
;;   :config
;;   ;; (push 'company-lsp company-backend))
;;   (add-to-list 'company-backends 'company-flow))
;; )

;; (use-package company-lsp
;;   :ensure t
;;   :config
;;   (push 'company-lsp company-backend))

;; (use-package company-irony
;;   :ensure t
;;   :config
;;   (require 'company)
;;   (add-to-list 'company-backend 'company-irony))

;; (use-package irony
;;   :ensure t
;;   :config
;;   (add-hook 'c++-mode-hook 'irony-mode)
;;   (add-hook 'c-mode-hook 'irony-mode)
;;   (add-hook 'objc-mode-hook 'irony-mode)
;;   (add-hook 'irony-mode-hook 'irony-cdb-autosetup-compile-options))

;; (use-package company-shell
;;   :ensure t
;;   :config
;;   (require 'company)
;;   (add-to-list 'company-backend 'company-shell))
