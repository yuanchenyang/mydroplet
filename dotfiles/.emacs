;;;;;;;; Bindings
;; set Mac's Fn key to type Hyper
(setq ns-function-modifier 'hyper)

;; Copy-Cut-Paste from clipboard with Super-C Super-X Super-V
(global-set-key (kbd "s-x") 'clipboard-kill-region) ;;cut
(global-set-key (kbd "s-c") 'clipboard-kill-ring-save) ;;copy
(global-set-key (kbd "s-v") 'clipboard-yank) ;;paste

;; Custom Keybindings
(global-set-key (kbd "C-x C-m") 'execute-extended-command)
(global-set-key (kbd "C-x C-k") 'kill-region)

(global-set-key (kbd "C-x m") 'execute-extended-command)
(global-set-key (kbd "C-x d") 'compile)

(global-set-key (kbd "C-=") 'er/expand-region)
(global-set-key (kbd "C-+") 'er/contract-region)
(global-set-key (kbd "C-'") 'helm-mini)
(global-set-key (kbd "C-;") 'ace-jump-mode)

(global-set-key [C-tab] 'dabbrev-expand)

(global-set-key (kbd "C-w") 'backward-kill-word)
(global-set-key (kbd "C-a") 'back-to-indentation)
(global-set-key (kbd "M-m") 'move-beginning-of-line)

(global-set-key (kbd "M-s s") 'shell-here)

(global-set-key (kbd "<f1>") 'ansi-term)
(global-set-key (kbd "<f2>") 'rename-buffer)
(global-set-key (kbd "<f9>") 'magit-status)

;; Resizing windows
(global-set-key (kbd "S-C-<left>") 'shrink-window-horizontally)
(global-set-key (kbd "S-C-<right>") 'enlarge-window-horizontally)
(global-set-key (kbd "S-C-<down>") 'shrink-window)
(global-set-key (kbd "S-C-<up>") 'enlarge-window)

;; Switching between windows
(global-set-key (kbd "C-x C-o") 'other-window)
(global-set-key (kbd "S-C-j") 'windmove-left)
(global-set-key (kbd "S-C-l") 'windmove-right)
(global-set-key (kbd "S-C-i") 'windmove-up)
(global-set-key (kbd "S-C-k") 'windmove-down)

;; Moving windows around
(global-set-key (kbd "M-J") 'buf-move-left)
(global-set-key (kbd "M-L") 'buf-move-right)
(global-set-key (kbd "M-I") 'buf-move-up)
(global-set-key (kbd "M-K") 'buf-move-down)

;; Multiple cursors
(global-set-key (kbd "C-S-c") 'mc/edit-lines)
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)

(global-set-key (kbd "H-SPC") 'set-rectangular-region-anchor)

;; I-edit mode
(global-set-key (kbd "C-.") 'iedit-mode)

;; Lisp Evalutation
(global-set-key (kbd "C-x C-e") 'replace-last-sexp)

;; calc-mode more comfortable
(global-set-key (kbd "M-c") 'calc-dispatch)

;; Ctrl+tab mapped to Alt+tab
(define-key function-key-map [(control tab)] [?\M-\t])

;; ibuffer by default
(global-set-key (kbd "C-x C-b") 'ibuffer)

;; Helm mode keys
(global-set-key (kbd "C-x b") 'helm-mini)
(global-set-key (kbd "C-x C-f") 'helm-find-files)

(global-set-key (kbd "C-c h s") 'helm-semantic-or-imenu)
(global-set-key (kbd "C-c h m") 'helm-man-woman)
(global-set-key (kbd "C-c h f") 'helm-find)
(global-set-key (kbd "C-c h o") 'helm-occur)
(global-set-key (kbd "C-c h r") 'helm-resume)
(global-set-key (kbd "C-x C-l") 'helm-locate)
(global-set-key (kbd "M-x")     'helm-M-x)
(global-set-key (kbd "M-g")     'helm-do-grep)

;; Haskell interactive mode
(eval-after-load "haskell-mode"
  '(progn
     (define-key haskell-mode-map (kbd "C-x C-d") nil)
     (define-key haskell-mode-map (kbd "C-c C-z") 'haskell-interactive-switch)
     (define-key haskell-mode-map (kbd "C-c C-l") 'haskell-process-load-file)
     (define-key haskell-mode-map (kbd "C-c C-b") 'haskell-interactive-switch)
     (define-key haskell-mode-map (kbd "C-c C-t") 'haskell-process-do-type)
     (define-key haskell-mode-map (kbd "C-c C-i") 'haskell-process-do-info)
     (define-key haskell-mode-map (kbd "C-c M-.") nil)
     (define-key haskell-mode-map (kbd "C-c C-d") nil)))

;; Set shell
(setq shell-file-name "/bin/zsh")

(setq package-archives '(("gnu" . "https://elpa.gnu.org/packages/")
                         ("melpa" . "https://melpa.org/packages/")))

;; Set load path for installed packages
(package-initialize)
(package-refresh-contents)

(setq package-selected-packages '(magit fillcode exec-path-from-shell pyenv-mode
   elpy julia-mode auto-minor-mode hy-mode nov ein matlab-mode yasnippet
   virtualenv slime-js shell-here scala-mode2 rust-mode racket-mode pyvenv
   paredit org nose multiple-cursors multi-web-mode monky markdown-mode+
   lua-mode jedi image-dired+ image+ iedit idomenu icicles htmlize
   highlight-indentation helm gnuplot gnugo ghc fuzzy flycheck
   find-file-in-project fill-column-indicator f expand-region ctags-update ctags
   csv-mode color-theme-solarized buffer-move auto-complete-clang ace-jump-mode
   ac-js2 ac-ispell ac-geiser))

(package-install-selected-packages)


;; Tramp mode
(setq tramp-default-method "ssh")

;; Helm mode
;; (require 'helm-config)
(setq helm-display-header-line nil)
(setq helm-split-window-in-side-p t)
