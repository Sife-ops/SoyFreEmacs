;;; package --- Summary

;;; Commentary:
;; Configuration for minimap.

;;; Code:

(use-package minimap
    :ensure t
    :config
    (setq minimap-window-location 'right)
    (setq minimap-minimum-width 15)
    (define-key global-map (kbd "C-c m") 'minimap-mode))

(provide 'init-minimap)
;;; init-minimap.el ends here

