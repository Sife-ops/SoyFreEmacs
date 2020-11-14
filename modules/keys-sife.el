;;; package --- Summary

;;; Commentary:
;; Load custom functions

;;; Code:

;; navigation
(unless (with-eval-after-load 'evil
	  (define-key global-map (kbd "M-q") 'evil-backward-word-begin)
	  (define-key global-map (kbd "M-f") 'evil-forward-word-begin))
  (define-key global-map (kbd "M-q") 'backward-word)
  (define-key global-map (kbd "M-f") 'forward-word))

(define-key global-map (kbd "C-q") 'backward-char)
(define-key global-map (kbd "C-f") 'forward-char)
(define-key global-map (kbd "M-p") 'backward-paragraph)
(define-key global-map (kbd "M-n") 'forward-paragraph)

(provide 'init-keys-sife.el)

;;; init-keys.el ends here
