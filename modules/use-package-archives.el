;;; package --- Summary

;;; Commentary:
;; Configuration for package archives.
;; Must be loaded before 50- modules.

;;; Code:

(package-initialize)
(require 'package)

(when (version< emacs-version "26.3")
  (setq gnutls-algorithm-priority "NORMAL:-VERS-TLS1.3"))

(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)

(unless (package-installed-p 'use-package)
    (package-refresh-contents)
    (package-install 'use-package))

(eval-when-compile
    (require 'use-package))

(provide 'init-archives)

;;; archives.el ends here
