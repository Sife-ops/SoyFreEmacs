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

    ;; hollow cursor style in emacs mode
    (with-eval-after-load 'sife-functions
      (setq sife-cursor-style 'hollow)
      (setq-default cursor-type sife-cursor-style))
    
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
