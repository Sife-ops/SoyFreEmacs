;;; package --- Summary

;;; Commentary:
;; Jump list.

;;; Code:

(defun sife-jumplist-push ()
  "Push point onto the jumplist stack.
To-do:
mark when jumping back in the stack."
  (interactive)

  (unless (boundp 'sife-jumplist-pushed)
    (make-local-variable 'sife-jumplist-pushed)
    (setq sife-jumplist-pushed nil))

  (setq sife-jumplist-pushed (cons (point-marker) sife-jumplist-pushed))
  (message "%s" sife-jumplist-pushed) ;; debug
  (message "%s" sife-jumplist-popped) ;; debug
  )

(defun sife-jumplist-previous ()
  "Go to previous mark in the stack."
  (interactive)

  (when (or (not (boundp 'sife-jumplist-pushed)) (eq sife-jumplist-pushed nil))
    (user-error "There are no marks in the pushed stack."))

  (unless (boundp 'sife-jumplist-popped)
    (make-local-variable 'sife-jumplist-popped)
    (setq sife-jumplist-popped nil))

  ;; automatically add point to jumplist
  ;; (cond
  ;;  ((equal (point-marker) (car sife-jumplist-pushed))
  ;;   (setq sife-jumplist-popped (cons (car sife-jumplist-pushed) sife-jumplist-popped))
  ;;   (setq sife-jumplist-pushed (cdr sife-jumplist-pushed)))
  ;;  ((not (equal (point-marker) (car sife-jumplist-pushed)))
  ;;   (setq sife-jumplist-popped (cons (point-marker) sife-jumplist-popped))))

  (when (equal (point-marker) (car sife-jumplist-pushed))
    (setq sife-jumplist-popped (cons (car sife-jumplist-pushed) sife-jumplist-popped))
    (setq sife-jumplist-pushed (cdr sife-jumplist-pushed)))

  (goto-char (car sife-jumplist-pushed))
  ;; (message "%s" (point)) ;; debug

  (setq sife-jumplist-popped (cons (car sife-jumplist-pushed) sife-jumplist-popped))
  (setq sife-jumplist-pushed (cdr sife-jumplist-pushed))
  (message "%s" sife-jumplist-pushed) ;; debug
  (message "%s" sife-jumplist-popped) ;; debug
  )

(defun sife-jumplist-next ()
  "Go to next mark in the stack."
  (interactive)

  (when (or (not (boundp 'sife-jumplist-popped)) (eq sife-jumplist-popped nil))
    (user-error "There are no marks in the popped stack."))

  (unless (boundp 'sife-jumplist-pushed)
    (make-local-variable 'sife-jumplist-pushed)
    (setq sife-jumplist-pushed nil))

  (when (equal (point-marker) (car sife-jumplist-popped))
    (setq sife-jumplist-pushed (cons (car sife-jumplist-popped) sife-jumplist-pushed))
    (setq sife-jumplist-popped (cdr sife-jumplist-popped)))

  (goto-char (car sife-jumplist-popped))
  ;; (message "%s" (point)) ;; debug

  (setq sife-jumplist-pushed (cons (car sife-jumplist-popped) sife-jumplist-pushed))
  (setq sife-jumplist-popped (cdr sife-jumplist-popped))
  (message "%s" sife-jumplist-pushed) ;; debug
  (message "%s" sife-jumplist-popped) ;; debug
  )

(defun sife-jumplist-clear ()
  "Clear the jumplist stack."
  (interactive)
  (setq sife-jumplist-popped nil)
  (setq sife-jumplist-pushed nil))

(provide 'sife-jumplist)

;;; sife-jumplist.el ends here
