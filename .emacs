(setq-default indent-tabs-mode nil)
(setq column-number-mode t)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(haskell-mode-hook (quote (turn-on-haskell-indent)))
 '(inhibit-startup-screen t)
 '(safe-local-variable-values (quote ((TeX-master . "thesis")))))
(fset 'compile-instant
      "\C-[xcompile\C-m\C-m")
(global-set-key [f12] 'compile-instant)
(show-paren-mode 1)

(add-to-list 'auto-mode-alist '("\\.nodes\\'" . antlr-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))

(if (file-exists-p "~/.emacs_local") (load "~/.emacs_local"))
