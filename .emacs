(require 'package)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(LilyPond-pdf-command "evince")
 '(inhibit-startup-screen t)
 '(package-archives
   '(("gnu" . "http://elpa.gnu.org/packages/")
     ("melpa" . "https://melpa.org/packages/")))
 '(package-selected-packages (quote (graphviz-dot-mode systemd haskell-mode tss)))
 '(safe-local-variable-values
   '((eval c-set-offset 'arglist-close 0)
     (eval c-set-offset 'arglist-intro '++)
     (eval c-set-offset 'case-label 0)
     (eval c-set-offset 'statement-case-open 0)
     (eval c-set-offset 'substatement-open 0))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(package-initialize)

(autoload 'markdown-mode "markdown-mode.el" "Markdown mode" t)
(setq auto-mode-alist (cons '("\\.md\\'" . markdown-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.markdown\\'" . markdown-mode) auto-mode-alist))

(autoload 'php-mode "php-mode.el" "PH mode" t)
(setq auto-mode-alist (append '(("\\.php[345]?\\'" . php-mode)) auto-mode-alist))

(autoload 'LilyPond-mode "lilypond-mode.el" "LilyPond mode" t)
(add-to-list 'load-path "/usr/share/emacs/site-lisp") ; the lilypond package installs elisp files outside the version-specific directory
(add-to-list 'auto-mode-alist '("\\.ly\\'" . LilyPond-mode))

(setq-default indent-tabs-mode nil)
(setq column-number-mode t)
(fset 'compile-instant
      "\C-[xcompile\C-m\C-m")
(global-set-key [f12] 'compile-instant)
(show-paren-mode 1)

(global-auto-revert-mode t)

(add-to-list 'auto-mode-alist '("\\.nodes\\'" . antlr-mode))
(add-to-list 'auto-mode-alist '("\\.pl\\'" . prolog-mode))
(add-to-list 'auto-mode-alist '("\\.ts\\'" . typescript-mode))

(add-to-list 'auto-mode-alist '("PKGBUILD" . shell-script-mode))

; https://stackoverflow.com/a/24847029/1420237
(defun unset-quote-hook ()
  (local-unset-key "\""))
(add-hook 'LaTeX-mode-hook 'unset-quote-hook)

(setq c-default-style "linux"
      c-basic-offset 2)

(add-hook 'java-mode-hook (lambda() (setq c-basic-offset 4)))

(xterm-mouse-mode)

(if (file-exists-p "~/.emacs_local") (load "~/.emacs_local"))
