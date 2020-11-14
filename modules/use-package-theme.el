;;; package --- Summary

;;; Commentary:
;; Configuration for themes.

;;; Code:

;; ;; gruvbox
;; (use-package gruvbox-theme
;;     :ensure t
;;     :config
;;     (load-theme 'gruvbox t))

;; ;; dracula
;; (use-package dracula-theme
;;     :ensure t
;;     :config
;;     (load-theme 'dracula t))

;; ;; atom
;; (use-package atom-dark-theme
    ;; :ensure t
    ;; :config
    ;; (load-theme 'atom-dark t))

;; ;; vscode
;; (use-package vscdark-theme
    ;; :ensure t
    ;; :config
    ;; (load-theme 'vscdark))

;; doom-themes
(use-package doom-themes
  :ensure t
  :config
;; (load-theme 'doom-one t))
;; (load-theme 'doom-nova t))
;; (load-theme 'doom-spacegrey t))
;; (load-theme 'doom-city-lights t))
;; (load-theme 'doom-dracula t))
(load-theme 'doom-molokai t))
;; (load-theme 'doom-tomorrow-night t))
;; (load-theme 'doom-challenger-deep t))
;; (load-theme 'doom-opera t))
;; (load-theme 'doom-peacock t))
;; (load-theme 'doom-solarized-light t))
;; (load-theme 'doom-vibrant t))
;; (load-theme 'doom-tomorrow-day t))

;; ;; solarized
;; (use-package color-theme-sanityinc-solarized
;;     :ensure t
;;     :config
;;     (color-theme-sanityinc-solarized--define-theme dark))

;; ;; doom-modeline
;; (use-package doom-modeline
;;   :ensure t
;;   :config
;;   :hook (after-init . doom-modeline-mode))

;; ;; all-the-icons
;; (use-package all-the-icons
;;   :ensure t)

(provide 'init-theme)

;;; init-theme.el ends here
