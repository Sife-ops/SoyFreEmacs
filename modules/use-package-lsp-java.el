;;; package --- Summary

;;; Commentary:
;; Configuration for lsp-java.
;; Requires OpenJDK be installed
;; Arch: jre-openjdk-headless 
;; Debian: openjdk-<version>-jre-headless

;;; Code:

(use-package lsp-java
  :ensure t
  :config
  (add-hook 'java-mode-hook #'lsp))

(provide 'init-java-lsp)

;;; init-java-lsp.el ends here.
