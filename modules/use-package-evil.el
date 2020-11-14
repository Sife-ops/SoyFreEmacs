;;; package --- Summary

;;; Commentary:
;; Configuration for evil.

;;; Code:

(use-package evil
    :ensure t

    :init
    (setq evil-want-C-u-scroll t)
    (setq evil-want-integration t)
    (setq evil-want-keybinding nil)
    (setq evil-search-module 'evil-search)

    :config
    (evil-mode 1)

    (with-eval-after-load 'org
      (use-package evil-org
	:ensure t
	:after org
	:config
	(add-hook 'org-mode-hook 'evil-org-mode)
	(add-hook 'evil-org-mode-hook
		  (lambda ()
		    (evil-org-set-key-theme)))
	(require 'evil-org-agenda)
	(evil-org-agenda-set-keys)))
    

    (use-package evil-collection
      :ensure t
      :config
      (evil-collection-init))

    (use-package evil-surround
      :ensure t
      :config
      (global-evil-surround-mode))

    (use-package evil-commentary
      :ensure t
      :config
      (evil-commentary-mode)))

(provide 'init-evil)

;;; evil.el ends here
