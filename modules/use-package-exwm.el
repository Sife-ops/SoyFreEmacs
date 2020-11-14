;;; package --- Summary
;;; Commentary:
;; Configuration for exwm.
;;; Code:
(use-package exwm
  :ensure t
  :config
  (require 'exwm-config)
  (exwm-config-default))
  ;; (require 'exwm-systemtray)
  ;; (exwm-systemtray-enable))

(provide 'init-exwm)
;;; init-exwm.el ends here
