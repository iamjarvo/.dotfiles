(require 'cask "/usr/local/Cellar/cask/0.7.2/cask.el")
(cask-initialize)
(require 'pallet)
(pallet-mode t)

;; exec-path-from-shell
(exec-path-from-shell-initialize)


(global-evil-leader-mode)

;; evil
(require 'evil)
(evil-mode)

;; (load "~/.emacs.d/my-loadpackages.el")

;; set font
;; (set-default-font "Monaco 18")
(set-frame-font "Monaco 18")

;; load theme
(load-theme 'base16-monokai-dark)

;; disable toolbar in GUI
(tool-bar-mode -1)

;; fix the PATH variable
(defun set-exec-path-from-shell-PATH ()
  (let ((path-from-shell (shell-command-to-string "TERM=vt100 $SHELL -i -c 'echo $PATH'")))
    (setenv "PATH" path-from-shell)
    (setq exec-path (split-string path-from-shell path-separator))))

(when window-system (set-exec-path-from-shell-PATH))

(setq make-backup-files nil) 

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("b953823053c6372fafde04957ab6d482021cc3a0f4b279f2868180c3ca56ca59" "0240d45644b370b0518e8407f5990a243c769fb0150a7e74297e6f7052a04a72" "ff5acbbf20c7ba4889eb2b14395fcd55eeecbfb57853e47c7d514503ad83d6bb" "4cdea318a3efab7ff7c832daea05f6b2d5d0a18b9bfa79763b674e860ecbc6da" "67b6ff0b4786c485ea606167da3b963a35ba37406017c4f50754dcd16230b75b" "ced74ff794aad9ac93266bf9a9a92c5641c01b05715c6862e30459a24844eec9" "cc495c40747ae22dd2de6e250cbd9a408e3588b59989368af565deeeff334126" "4cc014287035b11d1f8d45af1ff18f3509496a760650d16c7771ac9bdf16b1a6" "f0dfe326bdbb237d6bc3f533d371ffa7c894a12bb0a5bcd4cb67a948a4a13101" "fe6fb0cb1aa50dc563d81aad98c470a30f4e89db6d55a108f1083f33317ad413" "75c0b1d2528f1bce72f53344939da57e290aa34bea79f3a1ee19d6808cb55149" "cda6cb17953b3780294fa6688b3fe0d3d12c1ef019456333e3d5af01d4d6c054" "6ebb2401451dc6d01cd761eef8fe24812a57793c5ccc427b600893fa1d767b1d" "3539b3cc5cbba41609117830a79f71309a89782f23c740d4a5b569935f9b7726" "726dd9a188747664fbbff1cd9ab3c29a3f690a7b861f6e6a1c64462b64b306de" "a8245b7cc985a0610d71f9852e9f2767ad1b852c2bdea6f4aadc12cce9c4d6d0" "49ad7c8d458074db7392f8b8a49235496e9228eb2fa6d3ca3a7aa9d23454efc6" "96998f6f11ef9f551b427b8853d947a7857ea5a578c75aa9c4e7c73fe04d10b4" "3b0a350918ee819dca209cec62d867678d7dac74f6195f5e3799aa206358a983" "7bde52fdac7ac54d00f3d4c559f2f7aa899311655e7eb20ec5491f3b5c533fe8" "3d5ef3d7ed58c9ad321f05360ad8a6b24585b9c49abcee67bdcbb0fe583a6950" "58c6711a3b568437bab07a30385d34aacf64156cc5137ea20e799984f4227265" "3cd28471e80be3bd2657ca3f03fbb2884ab669662271794360866ab60b6cb6e6" "bb08c73af94ee74453c90422485b29e5643b73b05e8de029a6909af6a3fb3f58" "1b8d67b43ff1723960eb5e0cba512a2c7a2ad544ddb2533a90101fd1852b426e" "628278136f88aa1a151bb2d6c8a86bf2b7631fbea5f0f76cba2a0079cd910f7d" "06f0b439b62164c6f8f84fdda32b62fb50b6d00e8b01c2208e55543a6337433a" "987b709680284a5858d5fe7e4e428463a20dfabe0a6f2a6146b3b8c7c529f08b" "0c29db826418061b40564e3351194a3d4a125d182c6ee5178c237a7364f0ff12" "72a81c54c97b9e5efcc3ea214382615649ebb539cb4f2fe3a46cd12af72c7607" "46fd293ff6e2f6b74a5edf1063c32f2a758ec24a5f63d13b07a20255c074d399" "3cc2385c39257fed66238921602d8104d8fd6266ad88a006d0a4325336f5ee02" "e9776d12e4ccb722a2a732c6e80423331bcb93f02e089ba2a4b02e85de1cf00e" default)))
 '(magit-status-buffer-switch-function (quote pop-to-buffer)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:background nil)))))

;; switching windows
(eval-after-load "evil"
  '(progn
     (define-key evil-normal-state-map (kbd "C-w <left>") 'evil-window-left)
     (define-key evil-normal-state-map (kbd "C-w <down>") 'evil-window-down)
     (define-key evil-normal-state-map (kbd "C-w <up>") 'evil-window-up)
     (define-key evil-normal-state-map (kbd "C-w <right>") 'evil-window-right)))

(evil-leader/set-key
  "t" 'rspec-compile-file
  "p" 'helm-projectile
  "c" 'comment-or-uncomment-region
  "k" 'kill-buffer
  "rf" 'toggle-rspec-focus)

(set-face-attribute 'whitespace-space nil :background nil :foreground "gray30")

(defun insert-rspec-focus ()
  (interactive)
  (end-of-line)
  (re-search-backward " ")
  (insert ", focus: true")
  (save-buffer))

(defun remove-rspec-focus ()
  (interactive)
  (end-of-line)
  (re-search-backward ", focus: true")
  (delete-region (match-beginning 0) (match-end 0))
  (save-buffer))

(defun rspec-focus-found ()
  (end-of-line)
  (re-search-backward ", focus: true" (line-beginning-position) t))


(defun toggle-rspec-focus ()
  (interactive)
  (if (rspec-focus-found)
      (remove-rspec-focus)
    (insert-rspec-focus)))

(require 'chruby)

;; hide menu bar
(menu-bar-mode -1)

(defun turn-on-paredit () (paredit-mode 1))
(add-hook 'clojure-mode-hook 'turn-on-paredit)
