;;; package --- Summary

;;; Commentary:
;; Configuration for default Emacs

;;; Code:

;;--- EMACS BEHAVIOR ---;;

;; use unicode by default
(set-language-environment "UTF-8")
(set-default-coding-systems 'utf-8)

;; use electric pair mode by default
(electric-pair-mode 1)

;; enable upcase/downcase region command
(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)

;; default browser
(setq browse-url-browser-function 'eww-browse-url)

;;--- APPEARANCE ---;;

;; startup buffers
(setq inhibit-startup-message t)
;; (setq initial-buffer-choice "index.org")

;; hide menus & scroll bars
(scroll-bar-mode -1)
(tool-bar-mode -1)
(menu-bar-mode -1)

;; display relative line number
;; (global-display-line-numbers-mode)
(setq display-line-numbers-type 'relative)

;; line wrap
(set-default 'truncate-lines t)

(provide 'init-defaults)

;;; init-defaults.el ends here
