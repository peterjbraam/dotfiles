
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


(add-to-list 'load-path "~/.emacs.d/packages/haskell-mode/")
(require 'haskell-mode-autoloads)
(add-to-list 'Info-default-directory-list "~/.emacs.d/packages/haskell-mode/")

;; setup files ending in “.lg” to open in lua-mode
(add-to-list 'auto-mode-alist '("\\.lg\\'" . lua-mode))




(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector ["#212526" "#ff4b4b" "#b4fa70" "#fce94f" "#729fcf" "#ad7fa8" "#8cc4ff" "#eeeeec"])
 '(column-number-mode t)
 '(custom-enabled-themes (quote (tsdh-dark)))
 '(inhibit-startup-screen t)
 '(show-paren-mode t)
 '(text-mode-hook (quote (turn-on-auto-fill text-mode-hook-identify)))
 '(tool-bar-mode nil)
 '(uniquify-buffer-name-style (quote forward) nil (uniquify)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Ubuntu Mono" :foundry "unknown" :slant normal :weight normal :height 113 :width normal)))))
