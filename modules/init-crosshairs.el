;;; package --- Summary

;;; Commentary:
;; Configuration for crosshairs.

;;; Code:

(load (concat user-emacs-directory "lisp/hl-line+.el"))
(load (concat user-emacs-directory "lisp/vline.el"))
(load (concat user-emacs-directory "lisp/col-highlight.el"))
(load (concat user-emacs-directory "lisp/crosshairs.el"))

(set-face-background 'vline (face-attribute 'region :background))
(set-face-background 'col-highlight (face-attribute 'region :background))
(set-face-background 'hl-line (face-attribute 'region :background))

;; (crosshairs-mode)

(provide 'init-crosshairs)

;;; init-crosshairs.el ends here
