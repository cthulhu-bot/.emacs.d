;;; package --- Summary
(require 'package)

;;; Commentary:

;;; Code:
(add-to-list 'package-archives '("gnu" . "https://elpa.gnu.org/packages/"))
(add-to-list 'package-archives '("marmalade" . "https://marmalade-repo.org/packages/"))
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))

(when (< emacs-major-version 24)
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))

(when (fboundp 'windmove-default-keybindings)
  (windmove-default-keybindings))


;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default bold shadow italic underline bold bold-italic bold])
 '(compilation-message-face (quote default))
 '(cua-global-mark-cursor-color "#2aa198")
 '(cua-normal-cursor-color "#839496")
 '(cua-overwrite-cursor-color "#b58900")
 '(cua-read-only-cursor-color "#859900")
 '(custom-enabled-themes (quote (sanityinc-tomorrow-night)))
 '(custom-safe-themes
   (quote
    ("0b7ee9bac81558c11000b65100f29b09488ff9182c083fb303c7f13fd0ec8d2b" "06f0b439b62164c6f8f84fdda32b62fb50b6d00e8b01c2208e55543a6337433a" "a27c00821ccfd5a78b01e4f35dc056706dd9ede09a8b90c6955ae6a390eb1c1e" "8db4b03b9ae654d4a57804286eb3e332725c84d7cdab38463cb6b97d5762ad26" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" "ba3c5da197000aaf2f5514bef814b4d8bf1b6de7309b9fcd682ec26aa6a16fd2" default)))
 '(fci-rule-color "#373b41")
 '(highlight-changes-colors (quote ("#d33682" "#6c71c4")))
 '(highlight-symbol-colors
   (--map
    (solarized-color-blend it "#002b36" 0.25)
    (quote
     ("#b58900" "#2aa198" "#dc322f" "#6c71c4" "#859900" "#cb4b16" "#268bd2"))))
 '(highlight-symbol-foreground-color "#93a1a1")
 '(highlight-tail-colors
   (quote
    (("#073642" . 0)
     ("#546E00" . 20)
     ("#00736F" . 30)
     ("#00629D" . 50)
     ("#7B6000" . 60)
     ("#8B2C02" . 70)
     ("#93115C" . 85)
     ("#073642" . 100))))
 '(hl-bg-colors
   (quote
    ("#7B6000" "#8B2C02" "#990A1B" "#93115C" "#3F4D91" "#00629D" "#00736F" "#546E00")))
 '(hl-fg-colors
   (quote
    ("#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36")))
 '(magit-diff-use-overlays nil)
 '(nrepl-message-colors
   (quote
    ("#dc322f" "#cb4b16" "#b58900" "#546E00" "#B4C342" "#00629D" "#2aa198" "#d33682" "#6c71c4")))
 '(package-selected-packages
   (quote
    (web request paredit-everywhere ac-cider align-cljlet madhat2r-theme fiplr browse-kill-ring xref-js2 tern-context-coloring tern-auto-complete web-beautify js-comint js-format smart-forward expand-region nyan-mode nyan-prompt magit discover-my-major auto-complete restclient web-mode clojure-snippets clojurescript-mode clj-refactor exec-path-from-shell flycheck-flow flycheck-clojure flycheck use-package company-flow init-open-recentf sync-recentf multiple-cursors anzu popwin direx all-the-icons all-the-icons-dired neotree smart-mode-line smart-mode-line-powerline-theme dired+ dired-rainbow dired-details dired-subtree ranger icicles ido-grid-mode ido-ubiquitous ido-vertical-mode smex color-theme-sanityinc-tomorrow monokai-theme solarized-theme paredit clojure-quick-repls clojars js2-mode)))
 '(pos-tip-background-color "#073642")
 '(pos-tip-foreground-color "#93a1a1")
 '(smartrep-mode-line-active-bg (solarized-color-blend "#859900" "#073642" 0.2))
 '(term-default-bg-color "#002b36")
 '(term-default-fg-color "#839496")
 '(vc-annotate-background nil)
 '(vc-annotate-background-mode nil)
 '(vc-annotate-color-map
   (quote
    ((20 . "#cc6666")
     (40 . "#de935f")
     (60 . "#f0c674")
     (80 . "#b5bd68")
     (100 . "#8abeb7")
     (120 . "#81a2be")
     (140 . "#b294bb")
     (160 . "#cc6666")
     (180 . "#de935f")
     (200 . "#f0c674")
     (220 . "#b5bd68")
     (240 . "#8abeb7")
     (260 . "#81a2be")
     (280 . "#b294bb")
     (300 . "#cc6666")
     (320 . "#de935f")
     (340 . "#f0c674")
     (360 . "#b5bd68"))))
 '(vc-annotate-very-old-color nil)
 '(weechat-color-list
   (quote
    (unspecified "#002b36" "#073642" "#990A1B" "#dc322f" "#546E00" "#859900" "#7B6000" "#b58900" "#00629D" "#268bd2" "#93115C" "#d33682" "#00736F" "#2aa198" "#839496" "#657b83")))
 '(xterm-color-names
   ["#073642" "#dc322f" "#859900" "#b58900" "#268bd2" "#d33682" "#2aa198" "#eee8d5"])
 '(xterm-color-names-bright
   ["#002b36" "#cb4b16" "#586e75" "#657b83" "#839496" "#6c71c4" "#93a1a1" "#fdf6e3"]))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(mode-line ((t (:foreground "#030303" :background "#bdbdbd" :box nil))))
 '(mode-line-inactive ((t (:foreground "#f9f9f9" :background "#666666" :box nil)))))

;; Disable file menu
(menu-bar-mode -1)

;; Smex
(require 'smex)
(smex-initialize)
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

;; IDO Mode
(require 'ido)
(ido-mode t)
(ido-grid-mode 1)
;;(Require 'ido-vertical-mode)
;;(ido-mode 1)
;;(ido-vertical-mode 1)
;;(setq ido-vertical-define-keys 'C-n-and-C-p-only)

;; Expand Region
(require 'expand-region)
(global-set-key (kbd "C-c =") 'er/expand-region)
(global-set-key (kbd "C-c -") 'er/contract-region)

;;;;;;;;;;;;;; Org Mode ;;;;;;;;;;;;;;;;;;;;;;
(require 'org)
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(setq org-log-done t)
;; Open org file when emacs opens
;; (setq org-default-notes-file "/Users/josh/.emacs.d/tasks.org"
;;       initial-buffer-choice org-default-notes-file)

;; Line Numbers
(global-linum-mode t)

;; Ranger
(ranger-override-dired-mode t)
(setq ranger-width-parents 0.12)
(setq ranger-dont-show-binary t)
(fset 'open-ranger
   (lambda (&optional arg) "Keyboard macro." (interactive "p") (kmacro-exec-ring-item (quote ("[18~zp" 0 "%d")) arg)))
(global-set-key [f6] 'open-ranger)

;; Powerline
(add-to-list 'load-path "~/.emacs.d/vendor/emacs-powerline")
(require 'powerline)
(setq powerline-arrow-shape 'arrow)

;; Magit
(require 'magit)
(global-set-key (kbd "C-c C-g") 'magit-dispatch-popup)
(global-set-key (kbd "C-c g") 'magit-status)

;; Neotree
(require 'neotree)
(global-set-key [f5] 'neotree-toggle)
(setq neo-smart-open t)

;; Popwin
(require 'popwin)
(popwin-mode 1)

;; Anzu
(global-anzu-mode +1)

;; Save last desktop
;; (desktop-save-mode 1)

;; Multiple Cursors
(require 'multiple-cursors)
(global-set-key (kbd "C-c l") 'mc/mark-next-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)

;; Dired
(global-set-key [f7] (lambda ()
		       (interactive)
		       (dired "~/")))

;; Paredit
(autoload 'enable-paredit-mode "paredit" "Turn on pseudo-structural editing of Lisp code" t)
(add-hook 'emacs-lisp-mode-hook #'enable-paredit-mode)
(add-hook 'eval-expression-minibuffer-setup-hook #'enable-paredit-mode)
(add-hook 'ielm-mode-hook #'enable-paredit-mode)
(add-hook 'lisp-mode-hook #'enable-paredit-mode)
(add-hook 'lisp-interaction-mode-hook #'enable-paredit-mode)
(add-hook 'scheme-mode-hook #'enable-paredit-mode)
(add-hook 'clojure-mode-hook #'enable-paredit-mode)

;; Mouse
(xterm-mouse-mode 1)
(global-set-key (kbd "<mouse-5>") 'scroll-up-line)
(global-set-key (kbd "<mouse-4>") 'scroll-down-line)

;; Highlight Line Mode
(global-hl-line-mode t)

;; Company Mode
(add-hook 'after-init-hook 'global-company-mode)

;; Flycheck
(use-package flycheck
  :ensure t
  :init (global-flycheck-mode))

;; Autocomplete
(ac-config-default)

;; Restclient
(require 'restclient)

;; Discover my major
(global-set-key (kbd "C-h C-m") 'discover-my-major)
(global-set-key (kbd "C-h M-m") 'discover-my-mode)

;; Smart forward
(require 'smart-forward)
(global-set-key (kbd "M-<up>") 'smart-up)
(global-set-key (kbd "M-<down>") 'smart-down)
(global-set-key (kbd "M-<left>") 'smart-left)
(global-set-key (kbd "M-<right>") 'smart-right)

;; Flipr
 (require 'fiplr)
 (global-set-key (kbd "C-x f") 'fiplr-find-file)

;; Basic keybindings
(global-set-key (kbd "S-C-<left>")  'shrink-window-horizontally)
(global-set-key (kbd "S-C-<right>") 'enlarge-window-horizontally)
(global-set-key (kbd "S-C-<down>")  'shrink-window)
(global-set-key (kbd "S-C-<up>") 'enlarge-window)
(global-set-key (kbd "C-c C-b") 'eval-buffer)

(browse-kill-ring-default-keybindings)
(setq scroll-error-top-bottom 'true)

(defun open-line-below ()
  (interactive)
  (unless (eolp)
    (end-of-line))
  (newline-and-indent))
(global-set-key (kbd "C-o") 'open-line-below)
(global-set-key (kbd "C-S-o") 'open-line-above)

(global-set-key (kbd "C-x C-b") 'buffer-menu)

;;;;;;;;;;;;;;;;;;; Javascript ;;;;;;;;;;;;;;;;;;;
;; js2-mode
(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))
(add-to-list 'interpreter-mode-alist '("node" . js2-mode))

;; Js2 refactor
(require 'js2-refactor)
(add-hook 'js2-mode-hook #'js2-refactor-mode)
(js2r-add-keybindings-with-prefix "C-c C-m")

;; JS comint
(require 'js-comint)
;;(setq inferior-js-program-command "/usr/bin/java org.mozilla.javascript.tools.shell.Main -classpath")
(setq inferior-js-program-command "/Users/josh/.nvm/versions/node/v7.2.1/bin/node")
(add-hook 'js2-mode-hook '(lambda ()
			    (local-set-key "\C-x\C-e" 'js-send-last-sexp)
			    (local-set-key "\C-c\C-e"  'js-send-last-sexp-and-go)
			    (local-set-key "\C-cb"    'js-send-buffer)
			    (local-set-key "\C-c\C-b" 'js-send-buffer-and-go)
			    (local-set-key "\C-cl"    'js-load-file-and-go)))

;; JS format
;; (setenv "PATH" (concat "/usr/local/bin/node:" (getenv "PATH")))
;;(require 'js-format)
;; (eval-after-load "js2-mode"
;; 	    (add-hook 'js2-mode-hook
;; 		      (lambda ()
;; 			(js-format-setup "standard"))))
;;(global-set-key (kbd "C-x j j") 'js-format-buffer)

;; Web beautify
;; (eval-after-load 'js2-mode
;;   '(define-key js2-mode-map (kbd "C-c b") 'web-beautify-js))
;; (global-set-key (kbd "C-c b") 'web-beautify-js)

;; Prettier
(add-to-list 'load-path "~/.emacs.d/vendor/prettier")
(require 'prettier-js)
(setq prettier-target-mode "js2-mode")
(add-hook 'js2-mode-hook
	  (lambda ()
	    (add-hook 'before-save-hook 'prettier-before-save)))
(setq prettier-args '(
		      "--trailing-comma" "all"
		      "--bracket-spacing" "false"))

;; tern
(add-to-list 'load-path "~/.emacs.d/vendor/tern/")
(autoload 'tern-mode "tern.el" nil t)
(eval-after-load 'tern
  '(progn
     (require 'tern-auto-complete)
     (tern-ac-setup)))
(eval-after-load 'context-coloring
  '(tern-context-coloring-setup))
(add-hook 'js-mode (lambda ()
		     (unless (eq major-mode 'json-mode)
		       (tern-mode)
		       (context-coloring-mode))))

;;xref-js2
(define-key js2-mode-map (kbd "M-.") nil)
(add-hook 'js2-mode-hook (lambda ()
			   (add-hook 'xref-backend-functions #'xref-js2-xref-backend nil t)))

(provide '.emacs)
;;; init.el ends here
