(add-to-list 'load-path (expand-file-name "~/.emacs.d"))

(load-file "~/.emacs.d/interface.conf.el")
(load-file "~/.emacs.d/other-modes.conf.el")
(load-file "~/.emacs.d/auto-complete-conf.el")
(load-file "~/.emacs.d/osx-conf.el")
(load-file "~/.emacs.d/mouse-conf.el")

(setq ispell-program-name "aspell" ; use aspell instead of ispell
      ispell-extra-args '("--sug-mode=ultra"))(autoload 'flyspell-mode "flyspell" "On-the-fly spelling checker." t)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
