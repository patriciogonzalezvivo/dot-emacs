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