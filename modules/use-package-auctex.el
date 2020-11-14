;;; package --- Summary

;;; Commentary:
;; Configuration for AUCteX

;;; Code:

(use-package auctex
  :defer t
  :ensure t
  :config
  (setq TeX-auto-save t)
  (setq TeX-parse-self t)
  )

(provide 'init-auctex)

;;; init-auctex.el ends here
