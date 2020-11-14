;;; package --- Summary

;;; Commentary:
;; Load custom functions

;;; Code:

;; navigation
(unless (with-eval-after-load 'evil
	  (define-key global-map (kbd "C-M-j") 'evil-backward-WORD-begin)
	  (define-key global-map (kbd "C-M-l") 'evil-forward-WORD-begin)
	  (define-key global-map (kbd "M-j") 'evil-backward-word-begin)
	  (define-key global-map (kbd "M-l") 'evil-forward-word-begin))
  (define-key global-map (kbd "C-M-j") 'backward-word)
  (define-key global-map (kbd "C-M-l") 'forward-word)
  (define-key global-map (kbd "M-i") 'backward-word)
  (define-key global-map (kbd "M-l") 'forward-word))

(define-key global-map (kbd "C-i") 'previous-line)
(define-key global-map (kbd "C-j") 'backward-char)
(define-key global-map (kbd "C-k") 'next-line)
(define-key global-map (kbd "C-l") 'forward-char)

(define-key global-map (kbd "M-i") 'backward-paragraph)
(define-key global-map (kbd "M-k") 'forward-paragraph)

(define-key global-map (kbd "C-M-i") 'beginning-of-buffer)
(define-key global-map (kbd "C-M-k") 'end-of-buffer)

;; actions
;; (define-key global-map (kbd "C-j") 'backward-delete-char-untabify)
;; (define-key global-map (kbd "C-q") 'move-beginning-of-line)
;; (define-key global-map (kbd "M-e") 'backward-kill-word)
;; (define-key global-map (kbd "M-j") 'backward-kill-word)
;; (define-key global-map (kbd "M-n") 'forward-paragraph)
;; (define-key global-map (kbd "M-p") 'backward-paragraph)

(provide 'init-keys-sife.el)

;;; init-keys.el ends here
