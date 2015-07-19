
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "https://marmalade-repo.org/packages/")
                         ("melpa" . "http://melpa.org/packages/")))

(global-set-key (kbd "C-x C-b") 'ibuffer)

;;(when (memq window-system '(mac ns))
;;  (exec-path-from-shell-initialize))

(global-set-key (quote [M-down]) (quote scroll-up-line))
(global-set-key (quote [M-up]) (quote scroll-down-line)) 


(add-hook 'c-mode-common-hook
          (lambda ()
            (when (derived-mode-p 'c-mode 'c++-mode 'java-mode 'asm-mode)
              (ggtags-mode 1))))

;  (setq mac-command-key-is-meta t)
(add-to-list 'load-path "~/opt/emacs/haskell-mode/")
(require 'haskell-mode-autoloads)
(add-to-list 'Info-default-directory-list "~/opt/emacs/haskell-mode/")
