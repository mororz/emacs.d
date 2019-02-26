(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(org-babel-load-file (expand-file-name "~/.emacs.d/myinit.org"))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-directory "~/org")
 '(package-selected-packages
   (quote
    (slime vimish-fold ess afternoon base16-theme ocean ocean-theme pdf-tools markdown-mode ein rainbow-mode ac-geiser rainbow-delimiters parinfer page-break-lines pcre2el dired+ zenburn-theme yasnippet-snippets wttrin which-key use-package undo-tree try telephone-line spacemacs-theme solarized-theme smartparens ranger py-autopep8 project-explorer powerline poet-theme parrot org-bullets org-ac nyan-mode multi-term moody monokai-theme molokai-theme moe-theme mode-icons minions material-theme magit leuven-theme image-dired+ htmlize heaven-and-hell expand-region elpy doom-modeline counsel-projectile beacon all-the-icons-dired afternoon-theme ace-window))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(aw-leading-char-face ((t (:inherit ace-jump-face-foreground :height 3.0)))))
(put 'dired-find-alternate-file 'disabled nil)
(put 'narrow-to-region 'disabled nil)
