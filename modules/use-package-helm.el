;;; package --- Summary

;;; Commentary:
;; Configuration for helm.

;;; Code:
(defun sife--config-helm ()
  "Configuration for helm settings."
    (helm-autoresize-mode -1)

    ;;  keybinds
    (global-set-key (kbd "C-h a")   'helm-apropos)  		;; Helmized apropos interface
    (global-set-key (kbd "C-s")     'helm-occur)  		;; Replaces the default isearch keybinding
    (global-set-key (kbd "C-x b")   'helm-buffers-list) 	;; List buffers ( Emacs way )
    (global-set-key (kbd "C-x C-f") 'helm-find-files) 		;; Finding files with Helm
    (global-set-key (kbd "C-x '")     'helm-bookmarks) 		;; Bookmarks menu
    (global-set-key (kbd "M-c")     'helm-calcul-expression) 	;; Use Helm for calculations
    (global-set-key (kbd "M-x")     'helm-M-x)  		;; Improved M-x menu
    (global-set-key (kbd "M-y")     'helm-show-kill-ring))  	;; Show kill ring, pick something to paste

(use-package helm
    :ensure t
    :init
        (require 'helm-config)
        (setq helm-split-window-inside-p t
            helm-move-to-line-cycle-in-source t)
    :config
        (helm-mode 1)
        (sife--config-helm))

(provide 'init-helm)
;;; init-helm.el ends here
