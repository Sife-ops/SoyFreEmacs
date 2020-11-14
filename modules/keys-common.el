;;; package --- Summary

;;; Commentary:
;; Load custom functions

;;; Code:

;;--- DEFAULT ---;;

;; dired
(with-eval-after-load 'dired
    (define-key dired-mode-map (kbd "-") nil)
    (define-key dired-mode-map (kbd "-") 'dired-up-directory))

;; isearch
(define-key global-map (kbd "C-f") 'isearch-forward)
(define-key isearch-mode-map (kbd "C-n") 'isearch-repeat-forward)
(define-key isearch-mode-map (kbd "C-p") 'isearch-repeat-backward)

;; latex
(add-hook 'LaTeX-mode-hook
	  (lambda ()
	    (define-key LaTeX-mode-map (kbd "C-c '") nil)
	    (define-key LaTeX-mode-map (kbd "C-j") nil)))

;; miscellaneous
(define-key global-map (kbd "C-s") 'save-buffer)
(define-key global-map (kbd "C-c f") 'ido-dired)
(define-key global-map (kbd "C-c G") 'end-of-buffer)
(define-key global-map (kbd "C-c g") 'beginning-of-buffer)
(define-key global-map (kbd "C-c i") 'ibuffer)
(define-key global-map (kbd "C-c q r") 'query-replace-regexp)
(define-key global-map (kbd "C-c r") 'replace-regexp)
(define-key global-map (kbd "C-c u") 'ido-switch-buffer)
(define-key global-map (kbd "C-c w") 'eww-list-bookmarks)
(define-key global-map (kbd "C-c '") 'bookmark-jump)
(define-key global-map (kbd "<C-return>") 'eval-last-sexp)
(define-key global-map (kbd "C-c /") 'isearch-forward)
(define-key global-map (kbd "C-c ?") 'isearch-backward)
(define-key global-map (kbd "C-,") 'other-window)
(define-key global-map (kbd "M-E") 'eval-buffer)
(define-key global-map (kbd "M-s") 'save-some-buffers)

;;--- CUSTOM ---;;

(with-eval-after-load 'sife-functions
  ;; abbrev
  (define-key global-map (kbd "C-;") 'sife-delete-next-placeholder)
  (define-key global-map (kbd "C-'") 'sife-expand-abbrev)
  ;; windows
  (define-key global-map (kbd "C-x 2") nil)
  (define-key global-map (kbd "C-x 2") 'sife-split)
  (define-key global-map (kbd "C-x 3") nil)
  (define-key global-map (kbd "C-x 3") 'sife-vsplit)
  ;; goto next open pair
  (define-key global-map (kbd "C-.") 'sife-next-before-closed-pair)
  (define-key global-map (kbd "C-,") 'sife-previous-before-closed-pair)
  ;; lines
  (define-key global-map (kbd "C-c d d") 'sife-kill-line)
  (define-key global-map (kbd "C-c j") 'sife-backward-join-line))

(with-eval-after-load 'sife-jumplist
  (define-key global-map (kbd "M-m") nil)
  (define-key global-map (kbd "M-m M-'") 'sife-jumplist-push)
  (define-key global-map (kbd "M-i") 'sife-jumplist-previous)
  (define-key global-map (kbd "M-o") 'sife-jumplist-next))

;;--- PACKAGES ---;;

;; skk
(with-eval-after-load 'skk
  (define-key global-map (kbd "C-c k") 'skk-mode))

;; org
(with-eval-after-load 'org
  (define-key org-mode-map (kbd "C-j") nil)
  (define-key org-mode-map (kbd "C-,") nil)
  (define-key org-mode-map (kbd "C-c '") nil))

;; switch-window
(with-eval-after-load 'switch-window
  (define-key global-map (kbd "C-x o") nil)
  (define-key global-map (kbd "C-x o") 'switch-window))

;; avy
(with-eval-after-load 'avy
  (define-key global-map (kbd "M-f") 'avy-goto-char))

;; browse-kill-ring
(with-eval-after-load 'browse-kill-ring
  (define-key global-map (kbd "M-y") 'browse-kill-ring))

;; company
(with-eval-after-load 'company
  (define-key company-active-map (kbd "M-n") nil)
  (define-key company-active-map (kbd "M-p") nil)
  (define-key company-active-map (kbd "C-n") 'company-select-next)
  (define-key company-active-map (kbd "C-p") 'company-select-previous))

;; evil
(with-eval-after-load 'evil
  (define-key global-map (kbd "M-e") 'sife-evil-local-mode)
  (define-key evil-motion-state-map (kbd "C-i") 'evil-jump-backward)
  (define-key evil-motion-state-map (kbd "C-o") 'evil-jump-forward)
  (define-key global-map (kbd "C-x RET") 'evil-window-move-far-left))

;; expand-region
(with-eval-after-load 'expand-region
  (define-key global-map (kbd "M-.") 'er/expand-region)
  (define-key global-map (kbd "M-,") 'er/contract-region))

;; smex
(with-eval-after-load 'smex
  (define-key global-map (kbd "M-r") 'smex)
  (define-key global-map (kbd "M-x") 'smex))

(provide 'init-keys-common)

;;; init-keys.el ends here
