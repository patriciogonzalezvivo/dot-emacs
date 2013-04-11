;; COLOR-THEME
;;
(add-to-list 'load-path "~/.emacs.d/color-theme")
(require 'color-theme)
(eval-after-load "color-theme"
  '(progn
     (color-theme-initialize)
     (color-theme-hober)))
(load-file "~/.emacs.d/cyberpunk.el")
(color-theme-cyberpunk)
(set-cursor-color "yellow")
(require 'live-fontify-hex)

;; POPWIN
;; 
(add-to-list 'load-path "~/.emacs.d/popwin-el")
(require 'popwin)
(setq display-buffer-function 'popwin:display-buffer) 

;; GrowShriking Windows
;;
(defun xor (b1 b2)
       "Exclusive or of its two arguments."
       (or (and b1 b2)
           (and (not b1) (not b2))))
     
     (defun move-border-left-or-right (arg dir)
       "General function covering move-border-left and move-border-right. If DIR is
     t, then move left, otherwise move right."
       (interactive)
       (if (null arg) (setq arg 5))
       (let ((left-edge (nth 0 (window-edges))))
         (if (xor (= left-edge 0) dir)
          (shrink-window arg t)
          (enlarge-window arg t))))
     
     (defun move-border-left (arg)
       "If this is a window with its right edge being the edge of the screen, enlarge
     the window horizontally. If this is a window with its left edge being the edge
     of the screen, shrink the window horizontally. Otherwise, default to enlarging
     horizontally.
     
     Enlarge/Shrink by ARG columns, or 5 if arg is nil."
       (interactive "P")
       (move-border-left-or-right arg t))
     
     (defun move-border-right (arg)
       "If this is a window with its right edge being the edge of the screen, shrink
     the window horizontally. If this is a window with its left edge being the edge
     of the screen, enlarge the window horizontally. Otherwise, default to shrinking
     horizontally.
     
     Enlarge/Shrink by ARG columns, or 5 if arg is nil."
       (interactive "P")
       (move-border-left-or-right arg nil))
     
     (global-set-key (kbd "M-[") 'move-border-left)
     (global-set-key (kbd "M-]") 'move-border-right)
