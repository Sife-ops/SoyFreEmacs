(defun sife-xah-delete-char-insert ()
    "Delete char and insert."
  (interactive)
  (delete-char 1)
  (xah-fly-insert-mode-activate))

(defun sife-xah-insert-line-below ()
  "Open line below and move down."
  (interactive)
  (next-line)
  (goto-char (line-beginning-position))
  (open-line 1)
  (indent-for-tab-command)
  (xah-fly-insert-mode-activate))

(defun sife-xah-insert-line-above ()
  "Open line above and move up."
  (interactive)
  ;; (next-line)
  (goto-char (line-beginning-position))
  (open-line 1)
  (indent-for-tab-command)
  (xah-fly-insert-mode-activate))

(use-package xah-fly-keys
  :ensure t
  :config

  (xah-fly-keys 1)
  (xah-fly-keys-set-layout "qwerty")

  (define-key xah-fly-command-map (kbd "<escape>") 'keyboard-quit)
  (define-key xah-fly-insert-map (kbd "<escape>") 'xah-fly-command-mode-activate)
  (define-key xah-fly-command-map (kbd "i") 'xah-fly-insert-mode-activate)
  ;; (define-key xah-fly-command-map (kbd "o") 'xah-fly-insert-mode-activate)
  (define-key xah-fly-insert-map (kbd "C-n") nil)
  (define-key xah-fly-command-map (kbd "-") nil)
  
  (define-key xah-fly-command-map (kbd "h") 'backward-char)
  (define-key xah-fly-command-map (kbd "j") 'next-line)
  (define-key xah-fly-command-map (kbd "k") 'previous-line)
  (define-key xah-fly-command-map (kbd "l") 'forward-char)

  (define-key xah-fly-command-map (kbd "w") 'forward-word)
  (define-key xah-fly-command-map (kbd "b") 'backward-word)

  (define-key xah-fly-command-map (kbd "C-u") 'scroll-down-command)
  (define-key xah-fly-command-map (kbd "C-d") 'scroll-up-command)
  ;; (define-key xah-fly-command-map (kbd "r") 'backward-word)

  (define-key xah-fly-command-map (kbd "S") 'sife-open-line-below)
  (define-key xah-fly-command-map (kbd "s") 'sife-xah-insert-line-below)
  ;; (define-key xah-fly-command-map (kbd "O") 'sife-open-line-below)
  (define-key xah-fly-command-map (kbd "o") 'xah-end-of-line-or-block)
  ;; (define-key xah-fly-command-map (kbd "i") 'xah-beginning-of-line-or-block)
  (define-key xah-fly-command-map (kbd "u") 'xah-beginning-of-line-or-block)
  (define-key xah-fly-command-map (kbd "p") 'xah-end-of-line-or-block)

  (define-key xah-fly-command-map (kbd "N") 'isearch-backward)
  (define-key isearch-mode-map (kbd "C-j") 'isearch-repeat-forward)  
  (define-key isearch-mode-map (kbd "C-k") 'isearch-repeat-backward)  
  (define-key xah-fly-command-map (kbd "/") 'undo)

  ;; (define-key xah-fly-command-map (kbd "y") 'yank)
  ;; (define-key xah-fly-command-map (kbd "p") 'yank)
  (define-key xah-fly-command-map (kbd "V") 'sife-set-mark)
  (define-key xah-fly-command-map (kbd "v") 'yank)

  (define-key xah-fly-command-map (kbd "J") 'sife-backward-join-line)

  (define-key xah-fly-command-map (kbd "d") 'xah-kill-word)
  
  (define-key xah-fly-command-map (kbd "r") 'sife-xah-delete-char-insert)
  
  (when (package-installed-p 'expand-region)
    (define-key xah-fly-command-map (kbd "0") 'er/expand-region)
    (define-key xah-fly-command-map (kbd "9") 'er/contract-region))

  (xah-fly--define-keys
   (define-prefix-command 'xah-fly-leader-key-map)
   '(
     ("SPC" . xah-fly-insert-mode-activate)
     ("DEL" . xah-fly-insert-mode-activate)
     ("RET" . eval-last-sexp)
     ;; ("RET" . xah-fly-M-x)
     ("TAB" . xah-fly--tab-key-map)
     ("v" . xah-fly-dot-keymap)		; .
     ("s" . sife-delete-next-placeholder) ; ;
     ("-" . bookmark-jump)		; '
     ;; ("-" . xah-fill-or-unfill)	
     ("w" . xah-fly-comma-keymap)	; ,
     ("[" . xah-show-formfeed-as-line)	; -
     ;; /
     ;; ;
     ;; =
     ;; [
     ("\\" . toggle-input-method)
     ;; `
     ("1" . delete-other-windows)
     ("2" . sife-split)
     ("3" . sife-vsplit)
     ;; ("3" . delete-window)
     ;; ("4" . split-window-right)
     ("5" . make-frame-command)
     ;; ("6" . xah-upcase-sentence)
     ;; 7
     ;; 8
     ("9" . ispell-word)
     ("0" . sife-delete-winframe)
     ("a" . mark-whole-buffer)		; a
     ("x" . end-of-buffer)		; b
     ("j" . xah-fly-c-keymap)		; c
     ("e" . beginning-of-buffer)	; d
     ("." . xah-fly-e-keymap)		; e
     ("u" . xah-search-current-word)	; f
     ("i" . xah-close-current-buffer)	; g
     ("d" . xah-fly-h-keymap)		; h
     ("c" . sife-kill-line)		; i
     ("h" . xah-copy-all-or-region)	; j
     ;; ("t" . xah-paste-or-paste-previous) ; k
     ("t" . ido-kill-buffer) ; k
     ("n" . recenter-top-bottom)	 ; l
     ("m" . dired-jump)			 ; m
     ("b" . xah-fly-n-keymap)		 ; n
     ("r" . exchange-point-and-mark)	 ; o
     ("l" . query-replace)		 ; p 
     ("'" . xah-cut-all-or-region)	 ; q
     ("p" . xah-fly-r-keymap)		 ; r
     ("o" . save-buffer)		 ; s
     ("y" . xah-fly-t-keymap)		 ; t
     ("g" . switch-to-buffer)		 ; u
     ;; v
     ("," . xah-fly-w-keymap)		; w
     ("q" . xah-toggle-previous-letter-case) ; x
     ("f" . xah-show-kill-ring)		     ; y
     ;; z
     ;;
     ))
  
  (xah-fly--define-keys
   (define-prefix-command 'xah-fly-c-keymap)
   '(
     ("w" . xah-open-in-external-app) 	; ,
     ("v" . find-file)			; .
     ("j" . bookmark-bmenu-list)	; c
     ("." . ibuffer)			; e
     ("u" . xah-open-recently-closed)	; f
     ("d" . recentf-open-files)		; h
     ("c" . xah-copy-file-path)		; i
     ("n" . bookmark-set)		; l
     ("b" . xah-new-empty-buffer)	; n
     ("r" . xah-show-in-desktop)	; o
     ("l" . xah-open-last-closed)	; p
     ("p" . xah-open-file-fast)		; r
     ("o" . write-file)			; s
     ("g" . xah-open-file-at-cursor)	; u
     ("f" . xah-list-recently-closed)	; y
     ))

  (xah-fly--define-keys
   (define-prefix-command 'xah-fly-e-keymap)
   '(
     ("RET" . insert-char)
     ("SPC" . xah-insert-unicode)
     ("x" . xah-insert-black-lenticular-bracket) ; b
     ("j" . xah-insert-ascii-single-quote)       ; c
     ("e" . xah-insert-double-curly-quote)       ; d
     ("u" . xah-insert-emacs-quote)	         ; f
     ("i" . xah-insert-ascii-double-quote)       ; g
     ("d" . xah-insert-brace) ; {}               ; h
     ("g" . xah-insert-curly-single-quote)       ; i
     ("n" . xah-insert-formfeed)		 ; l
     ("m" . xah-insert-corner-bracket)	         ; m
     ("b" . xah-insert-square-bracket) ; []      ; n
     ("l" . xah-insert-single-angle-quote)       ; p
     ("p" . xah-insert-tortoise-shell-bracket)   ; r
     ("o" . xah-insert-string-assignment)	 ; s
     ("y" . xah-insert-paren)		         ; t
     ("g" . xah-insert-date)		         ; u
     ("<" . xah-insert-double-angle-bracket)     ; W
     ("," . xah-insert-angle-bracket)	         ; w
     ("f" . xah-insert-double-angle-quote)       ; y
     ))

  (xah-fly--define-keys
   (define-prefix-command 'xah-fly-h-keymap)
   '(
     ("s" . Info-goto-emacs-command-node) ; ;
     ("a" . apropos-command)		  ; a
     ("x" . describe-bindings)		  ; b
     ("j" . describe-char)		  ; c
     ("e" . apropos-documentation)	  ; d
     ("." . view-echo-area-messages)	  ; e
     ("u" . describe-face)		  ; f
     ("i" . info-lookup-symbol)		  ; g
     ("d" . describe-function)		  ; h
     ("c" . info)			  ; i
     ("h" . man)			  ; j
     ("T" . Info-goto-emacs-key-command-node) ; K
     ("t" . describe-key)		  ; k
     ("n" . view-lossage)		      ; l
     ("m" . xah-describe-major-mode)	      ; m
     ("b" . describe-variable)		      ; n
     ("r" . describe-language-environment)    ; o
     ("l" . finder-by-keyword)		      ; p
     ("p" . apropos-variable)		      ; r
     ("o" . describe-syntax)		      ; s
     ("g" . elisp-index-search)		      ; u
     ("k" . apropos-value)		      ; v
     (";" . describe-coding-system)	      ; z
     ))

  (xah-fly--define-keys
   (define-prefix-command 'xah-fly-n-keymap)
   '(
     ("SPC" . whitespace-mode)
     ;; RET
     ;; TAB
     ;; DEL
     ("w" . abbrev-mode)			; ,
     ("v" . toggle-frame-fullscreen)		; .
     ("-" . frame-configuration-to-register)	; '
     ("s" . window-configuration-to-register)	; ;
     ("1" . set-input-method)
     ("2" . global-hl-line-mode)
     ("4" . global-display-line-numbers-mode)
     ("5" . visual-line-mode)
     ("6" . calendar)
     ("7" . calc)
     ;; 8
     ("9" . shell-command)
     ("0" . shell-command-on-region)
     ("a" . text-scale-adjust)		; a
     ("x" . toggle-debug-on-error)	; b
     ("j" . toggle-case-fold-search)	; c
     ("e" . narrow-to-page)		; d
     ("." . eshell)			; e
     ;; f
     ("i" . xah-toggle-read-novel-mode)	; g
     ("d" . widen)			; h
     ("c" . make-frame-command)		; i
     ("h" . flyspell-buffer)		; j
     ("t" . menu-bar-open)		; k
     ("n" . toggle-word-wrap)		; l
     ;; m
     ("b" . narrow-to-region)		; n
     ("r" . variable-pitch-mode)	; o
     ("l" . read-only-mode)		; p
     ;; q
     ;; r
     ;; s
     ("y" . narrow-to-defun)		; t
     ("g" . shell)			; u
     ;; v
     ("," . eww)
     ("q" . save-some-buffers)		; x
     ;; y
     (";" . abort-recursive-edit)	; z
     ))

  (xah-fly--define-keys
   ;; kinda replacement related
   (define-prefix-command 'xah-fly-r-keymap)
   '(
     ("SPC" . rectangle-mark-mode)
     ("w" . apply-macro-to-region-lines) ; ,
     ("v" . kmacro-start-macro)		 ; .
     ("3" . number-to-register)
     ("4" . increment-register)
     ("i" . replace-rectangle)		; c
     ("e" . delete-rectangle)		; d
     ("." . call-last-kbd-macro)	; e
     ("i" . kill-rectangle)		; g
     ("n" . clear-rectangle)		; l
     ("c" . xah-space-to-newline)	; i
     ("b" . rectangle-number-lines)	; n
     ("r" . open-rectangle)		; o
     ("l" . kmacro-end-macro)		; p
     ("p" . yank-rectangle)		; r
     ("g" . xah-quote-lines)		; u
     ("f" . delete-whitespace-rectangle) ; y
     ))

  (xah-fly--define-keys
   (define-prefix-command 'xah-fly-t-keymap)
   '(
     ("SPC" . xah-clean-whitespace)
     ("TAB" . move-to-column)
     ("1" . xah-append-to-register-1)
     ("2" . xah-clear-register-1)
     ("3" . xah-copy-to-register-1)
     ("4" . xah-paste-from-register-1)
     ("8" . xah-clear-register-1)
     ("7" . xah-append-to-register-1)
     ("v" . sort-lines)			; .
     ("w" . sort-numeric-fields)	; ,
     ("-" . reverse-region)		; '
     ;; a
     ;; b
     ("i" . goto-char)			; c
     ("e" . mark-defun)			; d
     ("." . list-matching-lines)	; e
     ("u" . goto-line )			; f
     ;; g
     ;; ("h" . xah-close-current-buffer )
     ("c" . delete-non-matching-lines)	; i
     ("h" . copy-to-register)		; j
     ("t" . insert-register)		; k
     ("n" . xah-escape-quotes)		; l
     ("m" . xah-make-backup-and-save)	; m
     ("b" . repeat-complex-command)	; n
     ;; o
     ("l" . query-replace-regexp)	; p
     ;; q
     ("p" . copy-rectangle-to-register)	; r
     ;; s
     ("y" . repeat)			; t
     ("g" . delete-matching-lines)	; u
     ;; v
     ("," . xah-next-window-or-frame)	; w
     ;; x
     ("f" . delete-duplicate-lines)	; y
     ;; z
     ))

  (xah-fly--define-keys
   (define-prefix-command 'xah-fly-w-keymap)
   '(
     ("DEL" . xah-delete-current-file)
     ("v" . eval-buffer)		; .
     ("d" . eval-defun)			; e
     ("h" . xah-run-current-file)	; j
     ("m" . eval-last-sexp)		; m
     ("l" . eval-expression)		; p
     ("'" . save-buffers-kill-terminal)	; q
     ("g" . eval-region)		; u
     ("," . delete-frame)		; w
     ))

  (xah-fly--define-keys
   ;; kinda replacement related
   (define-prefix-command 'xah-fly-comma-keymap)
   '(
     ("b" . xref-pop-marker-stack)	; n
     ("y" . xref-find-definitions)	; t
     ))

  )

(provide 'init-xah-fly-keys)


