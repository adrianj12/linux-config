(require 'package)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(wombat))
 '(inhibit-startup-screen t)
 '(package-archives
   '(("gnu" . "https://elpa.gnu.org/packages/")
     ("melpa" . "https://melpa.org/packages/")))
 '(package-selected-packages '(haskell-mode geiser)))
(package-initialize)

(setq package-list '(haskell-mode))

(unless package-archive-contents
  (package-refresh-contents))

(dolist (package package-list)
  (unless (package-installed-p package)
    (package-install package)))

;; Basic UI setup
(require 'font-lock)
(global-font-lock-mode t)
(show-paren-mode 1)
(put 'upcase-region 'disabled nil)
(put 'eval-expression 'disabled nil)

(setq line-number-mode t)
(setq column-number-mode t)
(setq confirm-save-buffers nil)

;; y or n is sufficient for yes or no questions
(fset 'yes-or-no-p 'y-or-n-p)
;; show me the time
(display-time)

;; Basic Racket setup
(setq scheme-program-name "/usr/bin/racket")
(setq auto-mode-alist
      (cons '("\\.rkt\\'" . scheme-mode)
            auto-mode-alist))

(defun run-scheme2 ()
  "Run scheme-program-name and disable geiser-mode."
  (interactive)
  (split-window-right)
  (geiser-mode -1)
  (windmove-right)
  (run-scheme scheme-program-name))

;; Basic Haskell setup
(require 'haskell-mode)
(setq haskell-program-name "/usr/bin/ghci")
(setq auto-mode-alist
      (cons '("\\.hs\\'" . haskell-mode)
            auto-mode-alist))
(add-hook 'haskell-mode-hook 'turn-on-haskell-doc-mode)
;; Choose indentation mode (the latter requires haskell-mode >= 2.5):
(add-hook 'haskell-mode-hook 'turn-on-haskell-indent)
;;(add-hook 'haskell-mode-hook 'turn-on-haskell-indentation)

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
