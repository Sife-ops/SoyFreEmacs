;;; package --- Summary

;;; Commentary:
;; Custom functions...

;;; Code:

(defun sife-complete-other-window ()
  (interactive)
  (completion-at-point)
  (other-window 1)
  (next-line 3))

(defun sife-expand-abbrev ()
  "Expand abbrev and replace placeholder with input string."
  (interactive)
  ;; (expand-abbrev)
  ;; (re-isea)
  (let ((string-tag))
    (when (expand-abbrev)
      (save-excursion
	(goto-char (point-min))
	(when (search-forward "<==>" nil t)
	  (setq string-tag (read-string "Enter text: "))
	  (goto-char (point-min))
	  (while (search-forward "<==>")
	    (replace-match string-tag)))))))

(defun sife-datetime ()
  "Print the date and time."
  (interactive)
  (message "%s" (format-time-string "%Y-%m-%d %T")))

(defun sife-evil-local-mode ()
  "Toggle evil local mode."
  (interactive)
  (evil-local-mode 'toggle)
  (if (eq evil-local-mode nil)
      (setq cursor-type sife-cursor-style)))

(defun sife-wget-url-at-point ()
  "Download file in the background.
  https://masteringemacs.org/article/executing-shell-commands-emacs"
  (interactive)
  ;; (let ((sife-saved-variable))
  ;; (setq sife-saved-variable browse-url-browser-function)
  (let ((browse-url-browser-function))
    (setq browse-url-browser-function '(lambda (url &optional args)
					 (async-shell-command (concat "wget -P ~/Downloads/ \"" url "\""))))
    (ffap)))
    ;; (setq browse-url-browser-function sife-saved-variable)))


(defun sife-reverse-region (beg end)
 "Reverse characters between BEG and END."
 (interactive "r")
 (let ((region (buffer-substring beg end)))
   (delete-region beg end)
   (insert (nreverse region))))

(defun sife-delete-next-placeholder ()
    "Delete next placeholder pattern."
    (interactive)
    (search-forward "<++>")
    (replace-match ""))

(defun sife-backward-join-line (arg)
    "Backward kill line."
  (interactive "p")
  (join-line (- 1 arg)))

(defun sife-backward-kill-line (arg)
    "Backward kill line."
  (interactive "p")
  (kill-line (- 1 arg)))

(defun sife-delete-winframe ()
  "Delete window/frame"
  (interactive)
  (if (> (length (window-list)) 1)
      (delete-window)
    (delete-frame)))

(defun sife-kill-line ()
    "Kill entire line."
  (interactive)
  (goto-char (line-beginning-position))
  (kill-line))

(defun sife-next-open-pair ()
    "Go to the next character."
  (interactive)
  (re-search-forward "[(\[\{\"'<>]"))

(defun sife-next-before-closed-pair ()
  "Go before a closed pair"
  (interactive)
  (forward-char)
  (re-search-forward "[])}\"'>]")
  (backward-char))

(defun sife-previous-before-closed-pair ()
  "Go before a closed pair"
  (interactive)
  (re-search-backward "[])}\"'>]"))
  ;; (backward-char))

(defun sife-previous-open-pair ()
  "Go to the next character."
  (interactive)
  (backward-char)
  (re-search-backward "[(\[\{\"'<>]")
  (forward-char))

(defun sife-open-line-above ()
  "Open line below."
  (interactive)
  (let ((pt))
    (setq pt (point))
    (goto-char (line-beginning-position))
    (open-line 1)
    (goto-char pt)
    (forward-char)))

(defun sife-open-line-below ()
  "Open line below."
  (interactive)
  (let ((pt))
    (setq pt (point))
    (goto-char (line-end-position))
    (open-line 1)
    (goto-char pt)))

(defun sife-set-mark ()
    "Mark from line beginning to line end"
  (interactive)
  (goto-char (line-beginning-position))
  (push-mark)
  (goto-char (line-end-position))
  (activate-mark))

(defun sife-split ()
  "Split below other window."
  (interactive)
  (progn
    (split-window-below)
    (other-window 1)))

(defun sife-vsplit ()
  "Split below other window."
  (interactive)
  (progn
    (split-window-right)
    (other-window 1)))

(provide 'sife-functions)

;;; sife-functions.el ends here
