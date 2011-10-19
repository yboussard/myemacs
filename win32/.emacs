;; usefull function for emacs on win32 when bracket , accolade and pip dont work
(defun bracket()
  (interactive)
  (insert-char ?[ 1)
  (insert-char ?] 1)
  (backward-char)
)


(defun accolade()
  (interactive)
  (insert-char ?{ 1)
  (insert-char ?} 1)
  (backward-char)
)
  
(defun pipe()
  (interactive)
  (insert-char ?| 1)
)

(defun backslash()
  (interactive)
  (insert-char ?\\ 1)
)

(defun diese()
  (interactive)
  (insert-char ?# 1)
)

;; for buildout 
(defun bsection()
  (interactive)
  (occur  "\\\[.*\\\]
")
  (other-window 1)
  (if (get-buffer "*buildout-section*") (kill-buffer "*buildout-section*"))
  (rename-buffer "*buildout-section*")
  (goto-char (search-forward ":["))
)


;; undo on windows
(global-set-key (kbd "C-z") 'undo)
(global-set-key (kbd "C-M-'") 'accolade )
(global-set-key (kbd "C-M-(") 'bracket )
(global-set-key (kbd "C-M-_") 'backslash )
(global-set-key (kbd "C-M--") 'pipe )
(global-set-key (kbd "C-M-\"") 'diese )
(global-set-key (quote [S-tab]) (quote dabbrev-expand))


;; session revover

(desktop-save-mode 1)