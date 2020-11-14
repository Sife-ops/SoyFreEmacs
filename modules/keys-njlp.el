;;; package --- Summary

;;; Commentary:
;; Load custom functions

;;; Code:

;; navigation

(define-key global-map (kbd "C-z") 'recenter-top-bottom)

(define-key global-map (kbd "C-j") 'backward-char)
(define-key global-map (kbd "C-l") 'forward-char)

(define-key global-map (kbd "M-p") 'backward-paragraph)
(define-key global-map (kbd "M-n") 'forward-paragraph)

(unless (with-eval-after-load 'evil
	  (define-key global-map (kbd "M-j") 'evil-backward-word-begin)
	  (define-key global-map (kbd "M-l") 'evil-forward-word-begin))
  (define-key global-map (kbd "M-j") 'backward-word)
  (define-key global-map (kbd "M-l") 'forward-word))

(unless	(with-eval-after-load 'evil
	  (define-key global-map (kbd "C-M-j") 'evil-backward-WORD-begin)
	  (define-key global-map (kbd "C-M-l") 'evil-forward-WORD-begin))
  (define-key global-map (kbd "C-M-j") 'backward-word)
  (define-key global-map (kbd "C-M-l") 'forward-word))

;; (define-key global-map (kbd "C-u") 'sife-previous-before-closed-pair)
;; (define-key global-map (kbd "C-o") 'sife-next-before-closed-pair)
;; (define-key global-map (kbd "M-u") 'er/contract-region)
;; (define-key global-map (kbd "M-o") 'er/expand-region)
;; (define-key global-map (kbd "C-M-u") 'forward-paragraph)
;; (define-key global-map (kbd "C-M-u") 'forward-paragraph)

(provide 'init-keys-njlp.el)

;;; init-keys.el ends here
