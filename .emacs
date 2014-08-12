(setq-default indent-tabs-mode nil)
(setq column-number-mode t)
(custom-set-variables
 '(inhibit-startup-screen t))
(fset 'compile-instant
      "\C-[xcompile\C-m\C-m")
(global-set-key [f12] 'compile-instant)
(show-paren-mode 1)
(add-to-list 'auto-mode-alist '("\\.nodes\\'" . antlr-mode))
