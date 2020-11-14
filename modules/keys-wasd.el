;;; package --- Summary

;;; Commentary:
;; Load custom functions

;;; Code:

;;--- DEFAULT ---;;

;; navigation
(define-key global-map (kbd "C-w") 'previous-line)
(define-key global-map (kbd "C-a") 'backward-char)
(define-key global-map (kbd "C-s") 'next-line)
(define-key global-map (kbd "C-d") 'forward-char)

(define-key global-map (kbd "M-w") 'backward-paragraph)
(define-key global-map (kbd "M-a") 'backward-word)
(define-key global-map (kbd "M-s") 'forward-paragraph)
(define-key global-map (kbd "M-d") 'forward-word)
(define-key global-map (kbd "A") 'evil-backward-WORD-begin)
(define-key global-map (kbd "D") 'evil-forward-WORD-begin)

(define-key global-map (kbd "C-q") 'move-beginning-of-line)
(define-key global-map (kbd "C-e") 'move-end-of-line)
(define-key global-map (kbd "C-f") 'isearch-forward)
(define-key global-map (kbd "M-f") 'isearch-backward)


(provide 'init-keys-sife.el)

;;; init-keys.el ends here
