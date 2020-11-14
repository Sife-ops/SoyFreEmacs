;;; package --- Summary

;;; Commentary:
;; Configuration for emojify.
;; https://github.com/iqbalansari/emacs-emojify

;;; Code:

(use-package emojify
  :ensure t
  :hook
  (after-init . global-emojify-mode))

(provide 'init-emojify)

;;; init-eww.el ends here
