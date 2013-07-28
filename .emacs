(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector ["#242424" "#e5786d" "#95e454" "#cae682" "#8ac6f2" "#333366" "#ccaa8f" "#f6f3e8"])
 '(custom-enabled-themes (quote (solarized-light)))
 '(custom-safe-themes (quote ("e16a771a13a202ee6e276d06098bc77f008b73bbac4d526f160faa2d76c1dd0e" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" "d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; Fonts
(set-frame-font "Source Code Pro")
(set-face-attribute 'default nil :height 90)

(require 'package)
(add-to-list 'package-archives
    '("marmalade" .
          "http://marmalade-repo.org/packages/"))
(package-initialize)

;; Python Stuff
(load-file "/home/christopher/.emacs.d/emacs-for-python/epy-init.el")
(require 'epy-setup)
(require 'epy-python)
(require 'epy-completion)
(require 'epy-bindings)
(require 'epy-nose)
(epy-setup-checker "pyflakes %f")

(global-linum-mode 1)
(setq column-number-mode t)
(put 'dired-find-alternate-file 'disabled nil)


;; Javascript Stuff
(add-to-list 'load-path "~/.emacs.d/js2-mode")
(autoload 'js2-mode "js2" nil t)
(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))

(setq-default indent-tabs-mode nil)
(setq c-basic-indent 2)
(setq tab-width 4)
(setq indent-tabs-mode nil)

(require 'whitespace)
(autoload 'whitespace-mode           "whitespace" "Toggle whitespace visualization."        t)
   (autoload 'whitespace-toggle-options "whitespace" "Toggle local `whitespace-mode' options." t)

(add-to-list 'load-path "~/.emacs.d/yasnippet")
;; Load the library
(require 'yasnippet)
(yas/initialize)
;; Load the snippet files themselves
(yas/load-directory "~/.emacs.d/yasnippet/snippets/")
;; Let's have snippets in the auto-complete dropdown
(add-to-list 'ac-sources 'ac-source-yasnippet)

(global-set-key (kbd "M-i") 'yas/expand-from-trigger-key)
