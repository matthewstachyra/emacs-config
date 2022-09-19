;; vanilla emacs config
;; author: matthew stachyra
;; last updated: 13 june 2022

;; note: this says that in .emacs.d (default user emacs directory), we will have file
;; config.org and that is where init.el will grab all of its source code from
(org-babel-load-file
  (expand-file-name
  "config.org"
  user-emacs-directory))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(adwaita))
 '(custom-safe-themes
   '("6ca5f925de5c119694dbe47e2bc95f8bad16b46d154b3e2e0ae246fec4100ec5" "eb122e1df607ee9364c2dfb118ae4715a49f1a9e070b9d2eb033f1cefd50a908" "70cfdd2e7beaf492d84dfd5f1955ca358afb0a279df6bd03240c2ce74a578e9e" default))
 '(fancy-splash-image nil)
 '(inhibit-startup-screen nil)
 '(menu-bar-mode nil)
 '(package-selected-packages
   '(god-mode auctex org-fragtog ## zenburn-theme evil-collection evil use-package))
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
