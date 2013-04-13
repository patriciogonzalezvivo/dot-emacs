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

;; WIN-SWITCH
;;
(add-to-list 'load-path "~/.emacs.d/win-switch")
(require 'win-switch)
(global-set-key "\C-xo" 'win-switch-dispatch)
(setq win-switch-feedback-background-color "DeepPink3")
(setq win-switch-feedback-foreground-color "black")
(setq win-switch-window-threshold 1)
(setq win-switch-idle-time 2.7)
