;;; package --- Summary

;;; Commentary:
;; Load custom functions

;;; Code:

;; navigation
(unless (with-eval-after-load 'evil
	  (define-key global-map (kbd "C-M-h") 'evil-backward-WORD-begin)
	  (define-key global-map (kbd "C-M-l") 'evil-forward-WORD-begin)
	  (define-key global-map (kbd "M-h") 'evil-backward-word-begin)
	  (define-key global-map (kbd "M-l") 'evil-forward-word-begin))
  (define-key global-map (kbd "C-M-h") 'backward-word)
  (define-key global-map (kbd "C-M-l") 'forward-word)
  (define-key global-map (kbd "M-h") 'backward-word)
  (define-key global-map (kbd "M-l") 'forward-word))

(define-key global-map (kbd "C-h") 'backward-char)
(define-key global-map (kbd "C-j") 'next-line)
(define-key global-map (kbd "C-k") 'previous-line)
(define-key global-map (kbd "C-l") 'forward-char)

(define-key global-map (kbd "M-j") 'forward-paragraph)
(define-key global-map (kbd "M-k") 'backward-paragraph)

(define-key global-map (kbd "C-M-j") 'end-of-buffer)
(define-key global-map (kbd "C-M-k") 'beginning-of-buffer)



;; actions
;; (define-key global-map (kbd "C-j") 'backward-delete-char-untabify)
;; (define-key global-map (kbd "C-q") 'move-beginning-of-line)
;; (define-key global-map (kbd "M-e") 'backward-kill-word)
;; (define-key global-map (kbd "M-j") 'backward-kill-word)
;; (define-key global-map (kbd "M-n") 'forward-paragraph)
;; (define-key global-map (kbd "M-p") 'backward-paragraph)

(provide 'init-keys-hjkl.el)

;;; init-keys.el ends here
