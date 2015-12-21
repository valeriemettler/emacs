(message " Rock on Valerie!!! ")
(if (fboundp 'tool-bar-mode)   (tool-bar-mode -1))

(setq package-archives '(("elpa" . "http://tromey.com/elpa/")
                         ("melpa" . "http://melpa.milkbox.net/packages/")))

(package-initialize)

(global-set-key [f6] 'magit-status)

(setq cua-enable-cua-keys nil) ;; only for rectangles
(cua-mode t)

(fset 'yes-or-no-p 'y-or-n-p)

(org-babel-do-load-languages
 'org-babel-load-languages
 '(
   (sh . t)
   (python . t)
   (ruby . t)
   (sqlite . t)
   (js . t)
   ))

(require 'key-chord)
(key-chord-mode 1)
(key-chord-define-global "xo" 'other-window)
(key-chord-define-global "zc" 'insert-console-log)
(key-chord-define-global "jf" 'insert-js-fn)
(key-chord-define-global "lb" 'list-buffers)
(key-chord-define-global "kb" 'list-buffers)

; http://www.emacswiki.org/emacs/WindowResize
(key-chord-define-global "z=" 'enlarge-window-horizontally)
(key-chord-define-global "z-" 'shrink-window-horizontally)
(key-chord-define-global "zu" 'cua-exchange-point-and-mark)
(key-chord-define-global "ze" 'eval-last-sexp)

(global-set-key (kbd "s-s") 'save-buffer)
(global-set-key (kbd "s-h") 'describe-key)
(global-set-key (kbd "s-o") 'other-window)
(global-set-key (kbd "C-x C-x") 'nothing)

(defun mouse-drag-track ()
  (interactive)
  (message "no mouse highlight for you!"))

(defun mouse-set-point ()
  (interactive)
  (message "no mouse for you!"))

(defun insert-console-log ()
  "Insert 'console.log' into buffer"
  (interactive)
  (insert "console.log();")
  (backward-char)
  (backward-char)
  )

(defun insert-js-fn ()
  "Insert js function into buffer"
  (interactive)
  (insert "function () {}")
  (backward-char)(backward-char)(backward-char)(backward-char)
  )

(defun nothing ()
  (interactive)
  (message "Saved you, Valerie! hahahaha!")
  )

(defun alt-colors-1 ()
  (progn
     (set-cursor-color "#ff0000")
     (set-mouse-color "Orchid")
     (set-background-color "DarkSlateGray")
     (set-foreground-color "Wheat")
     (blink-cursor-mode 0)
     (global-hl-line-mode 1)
     ))
(alt-colors-1)
  
(set-face-attribute 'default nil :height 150)
