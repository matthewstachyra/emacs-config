(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))
(package-refresh-contents)
(package-initialize)

(unless (package-installed-p 'use-package)
(package-install 'use-package))

(use-package evil
	     :ensure t ;; install evil if not installed
	     :init     ;; tweak evil's configuration before loading it
	     (setq evil-want-integration t) ;; this is optional since it's already set to true by default
	     (setq evil-want-keybinding nil)
	     (setq evil-vsplit-window-right t)
	     (setq evil-split-window-below t)
	     (evil-mode))
(use-package evil-collection ;; allows use of evil keybindings in use cases beyond text editing
	     :after evil
	     :ensure t
	     :config
	     (evil-collection-init))

(tool-bar-mode -1)
(menu-bar-mode -1)
(defalias 'yes-or-no-p 'y-or-n-p)

(add-to-list 'load-path "elpa/which-key-20220518.1941/which-key.el")
(use-package which-key)
(require 'which-key)
(which-key-mode)

(setq org-hide-leading-stars t)
(setq org-hide-emphasis-markers t)

(with-eval-after-load 'org
  (add-hook 'org-mode-hook #'visual-line-mode))

(setq fancy-splash-image (expand-file-name "/Users/matthewstachyra/Desktop/other/default.xpm"))
