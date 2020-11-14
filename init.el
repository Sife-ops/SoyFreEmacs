;;; package --- Summary

;;; Commentary:
;; Sife's fully modular Emacs configuration.
;;
;; To enable modules, create links from modules/ to init.d/ like this:
;;
;; $ cd ~/.config/emacs/init.d
;; $ ln -sf ../modules/use-package-company.el ./81-use-package-company.el
;;
;; Modules are loaded in alpha-numerical order, so it is recommended to make use
;; of a numbering scheme as in the above example to manage dependencies. While
;; efforts are made to provide modules that are as sequence-independent as
;; possible, conditions may arise in which one module is dependent on another
;; and should be given a number higher than the prerequisite module. Namely, it
;; is important to ensure that modules with 'package' in the name, which depend
;; on package archives, are loaded after 'use-package-archives.el,' which
;; installs and initializes the package archives.
;;
;; 80-use-package-archives.el
;; 81-use-package-company.el
;; 81-package-ddskk.el

;;; Code:

(setq user-emacs-directory "~/.config/emacs/")

(setq custom-file (concat user-emacs-directory "custom.el"))
(when (file-exists-p custom-file)
  (load custom-file))

(setq modules-enabled (concat user-emacs-directory "init.d/"))
(require 'cl-lib)
(cl-loop for file in (append (directory-files-recursively modules-enabled "\\.el$"))
           do (condition-case ex
                (load (file-name-sans-extension file))
                ('error (with-current-buffer "*scratch*"
                        (insert (format "[INIT ERROR]\n%s\n%s\n\n" file ex))))))

;;; init.el ends here.
