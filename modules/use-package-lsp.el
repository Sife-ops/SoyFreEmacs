;;; package --- Summary
;;; Commentary:
;; Configuration for lsp.
;;; Code:

(define-key global-map (kbd "M-l") nil)
(setq lsp-keymap-prefix "M-l")

(use-package lsp-mode
  :ensure t
  ;; :defer t
  :hook ((python-mode . lsp))
  :commands (lsp lsp-deferred))
    ;; :config

(use-package lsp-ui
  :commands lsp-ui-mode)

(defvar lsp-language-id-configuration
  '(
    (python-mode . "python")
    ))
;; if you are adding the support for your language server in separate repo use
;; (add-to-list 'lsp-language-id-configuration '(python-mode . "python"))

(lsp-register-client
 (make-lsp-client :new-connection (lsp-stdio-connection "pyls")
                  :major-modes '(python-mode)
                  :server-id 'pyls))

(provide 'init-lsp)
;;; init-lsp.el ends here
