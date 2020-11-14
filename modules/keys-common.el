;;; package --- Summary

;;; Commentary:
;; Load custom functions

;;; Code:

;;--- DEFAULT ---;;

;; isearch
(define-key isearch-mode-map (kbd "C-n") 'isearch-repeat-forward)
(define-key isearch-mode-map (kbd "C-p") 'isearch-repeat-backward)

;; miscellaneous
(define-key global-map (kbd "C-x C-b") 'ibuffer)
(define-key global-map (kbd "<C-return>") 'eval-last-sexp)

;;--- CUSTOM ---;;

(with-eval-after-load 'sife-functions
  ;; abbrev
  (define-key global-map (kbd "M-k") 'sife-delete-next-placeholder)
  (define-key global-map (kbd "M-j") 'sife-expand-abbrev)
  ;; windows
  (define-key global-map (kbd "C-x 2") nil)
  (define-key global-map (kbd "C-x 2") 'sife-split)
  (define-key global-map (kbd "C-x 3") nil)
  (define-key global-map (kbd "C-x 3") 'sife-vsplit)
  ;; goto next open pair
  (define-key global-map (kbd "C-.") 'sife-next-before-closed-pair)
  (define-key global-map (kbd "C-,") 'sife-previous-before-closed-pair))

;;--- PACKAGES ---;;

;; browse-kill-ring
(with-eval-after-load 'browse-kill-ring
  (define-key global-map (kbd "M-y") 'browse-kill-ring))

;; company
(with-eval-after-load 'company
  (define-key company-active-map (kbd "M-j") nil)
  (define-key company-active-map (kbd "C-m") 'company-complete-selection)
  (define-key company-active-map (kbd "C-n") 'company-select-next)
  (define-key company-active-map (kbd "C-p") 'company-select-previous))

;; ddskk
(with-eval-after-load 'skk
  (define-key global-map (kbd "C-c j") 'skk-mode))

;; evil
(with-eval-after-load 'evil
  (define-key evil-insert-state-map (kbd "C-n") 'sife-complete-other-window))

;; expand-region
(with-eval-after-load 'expand-region
  (define-key global-map (kbd "M-.") 'er/expand-region)
  (define-key global-map (kbd "M-,") 'er/contract-region))

;; smex
(with-eval-after-load 'smex
  (define-key global-map (kbd "M-x") 'smex))

;; switch-window
(with-eval-after-load 'switch-window
  (define-key global-map (kbd "C-x o") nil)
  (define-key global-map (kbd "C-x o") 'switch-window))

(provide 'init-keys-common)

;;; init-keys.el ends here
