(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#212526" "#ff4b4b" "#b4fa70" "#fce94f" "#729fcf" "#ad7fa8" "#8cc4ff" "#eeeeec"])
 '(background-color "#fdf6e3")
 '(background-mode light)
 '(comint-completion-addsuffix t)
 '(comint-completion-autolist t)
 '(comint-input-ignoredups t)
 '(comint-scroll-show-maximum-output t)
 '(comint-scroll-to-bottom-on-input t)
 '(comint-scroll-to-bottom-on-output t)
 '(compilation-message-face (quote default))
 '(cursor-color "#657b83")
 '(custom-enabled-themes (quote (solarized-light)))
 '(custom-safe-themes
   (quote
    ("74278d14b7d5cf691c4d846a4bbf6e62d32104986f104c1e61f718f9669ec04b" "fc2e73812a9a4a5750c3e1f27c45e4ca8ac33eaa1ff909a1b5a75a71a719ea66" "987d1efa769be3310d48359e54e3c8f6a742449f0c46a651512368359020b87f" "d9046dcd38624dbe0eb84605e77d165e24fdfca3a40c3b13f504728bab0bf99d" "ab04c00a7e48ad784b52f34aa6bfa1e80d0c3fcacc50e1189af3651013eb0d58" "5e3fc08bcadce4c6785fc49be686a4a82a356db569f55d411258984e952f194a" "7153b82e50b6f7452b4519097f880d968a6eaf6f6ef38cc45a144958e553fbc6" "a0feb1322de9e26a4d209d1cfa236deaf64662bb604fa513cca6a057ddf0ef64" "04dd0236a367865e591927a3810f178e8d33c372ad5bfef48b5ce90d4b476481" "7356632cebc6a11a87bc5fcffaa49bae528026a78637acd03cae57c091afd9b9" "1e7e097ec8cb1f8c3a912d7e1e0331caeed49fef6cff220be63bd2a6ba4cc365" "fc5fcb6f1f1c1bc01305694c59a1a861b008c534cae8d0e48e4d5e81ad718bc6" "943bff6eada8e1796f8192a7124c1129d6ff9fbd1a0aed7b57ad2bf14201fdd4" default)))
 '(display-time-mode t)
 '(ecb-options-version "2.40")
 '(fci-rule-color "#383838")
 '(font-use-system-font t)
 '(foreground-color "#657b83")
 '(highlight-changes-colors ("#FD5FF0" "#AE81FF"))
 '(highlight-tail-colors
   (quote
    (("#49483E" . 0)
     ("#67930F" . 20)
     ("#349B8D" . 30)
     ("#21889B" . 50)
     ("#968B26" . 60)
     ("#A45E0A" . 70)
     ("#A41F99" . 85)
     ("#49483E" . 100))))
 '(inhibit-startup-screen t)
 '(magit-diff-use-overlays nil)
 '(scroll-bar-mode nil)
 '(show-paren-mode t)
 '(tool-bar-mode nil)
 '(vc-annotate-background "#2B2B2B")
 '(vc-annotate-color-map
   (quote
    ((20 . "#BC8383")
     (40 . "#CC9393")
     (60 . "#DFAF8F")
     (80 . "#D0BF8F")
     (100 . "#E0CF9F")
     (120 . "#F0DFAF")
     (140 . "#5F7F5F")
     (160 . "#7F9F7F")
     (180 . "#8FB28F")
     (200 . "#9FC59F")
     (220 . "#AFD8AF")
     (240 . "#BFEBBF")
     (260 . "#93E0E3")
     (280 . "#6CA0A3")
     (300 . "#7CB8BB")
     (320 . "#8CD0D3")
     (340 . "#94BFF3")
     (360 . "#DC8CC3"))))
 '(vc-annotate-very-old-color "#DC8CC3")
 '(weechat-color-list
   (unspecified "#272822" "#49483E" "#A20C41" "#F92672" "#67930F" "#A6E22E" "#968B26" "#E6DB74" "#21889B" "#66D9EF" "#A41F99" "#FD5FF0" "#349B8D" "#A1EFE4" "#F8F8F2" "#F8F8F0")))



(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 113 :width normal :foundry "unknown" :family "Ubuntu Mono")))))


(global-set-key (kbd "M-k") 'shrink-window-horizontally)
(global-set-key (kbd "M-\;") 'enlarge-window-horizontally)
;(global-set-key (kbd "M-l") 'shrink-window)
(global-set-key (kbd "M-o") 'enlarge-window)

; interpret and use ansi color codes in shell output windows
(setq ansi-color-names-vector
  ["black" "red" "green" "goldenrod" "blue" "magenta" "cyan" "white"])
(autoload 'ansi-color-for-comint-mode-on "ansi-color" nil t)
(add-hook 'shell-mode-hook 'ansi-color-for-comint-mode-on)
(add-hook 'term-mode-hook 'ansi-color-for-comint-mode-on)
(add-hook 'comint-output-filter-functions 'comint-strip-ctrl-m)

;Create few shells
(shell "*shell7*")
(shell "*shell8*")
(shell "*shell9*")

; C-5, 6, 7 to switch to shells
(global-set-key (kbd "M-7")
  (lambda () (interactive) (switch-to-buffer "*shell7*")))
(global-set-key (kbd "M-8")
  (lambda () (interactive) (switch-to-buffer "*shell8*")))
(global-set-key (kbd "M-9")
  (lambda () (interactive) (switch-to-buffer "*shell9*")))

(defun my-c-c++-mode-hook()
	(c-set-style "bsd") (setq c-basic-offset 4))

(add-hook 'c++-mode-hook 'my-c-c++-mode-hook)
(add-hook 'c++-mode-hook '(lambda () (highlight-lines-matching-regexp ".\\{120\\}" 'hi-yellow)))
(add-hook 'c-mode-hook 'my-c-c++-mode-hook)

(setq-default compile-command "cmake -D CMAKE_BUILD_TYPE=Debug .. && make")

(setq-default indent-tabs-mode nil)

(setq default-process-coding-system '(utf-8-unix . utf-8-unix))

;Show line number on right side
(global-linum-mode t)

;Follow the compilation output
(setq compilation-scroll-output t)

;Bind a key to find file at mouse point
(global-set-key (kbd "M-s M-s") 'ffap) ; Alt+s s

;Make emacs jump to last change point
(global-set-key (kbd"C-x p") 'session-jump-to-last-change)

;Show matching angle brackets
(modify-syntax-entry ?< "(<" )
(modify-syntax-entry ?> ")>" )

;Add c++ mode to .h files
(add-to-list 'auto-mode-alist '("\\.h\\'" . c++-mode))

;Make tramp to connect by SSH connection
(setq tramp-default-method "ssh")


;Theme for Emacs
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
;(load-theme 'solarized-light t)

(add-to-list 'load-path              "~/.emacs.d/themes/alect-themes-master")
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/alect-themes-master")
;(load-theme 'monokai t)
(load-theme 'solarized-light t)

;;;; POWER LINE CUSTOMISATION
(add-to-list 'load-path "~/.emacs.d/emacs-powerline")
(require 'powerline)
(setq powerline-arrow-shape 'arrow)   ;; the default


;; Moe-theme
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/moe-theme.el")
(add-to-list 'load-path "~/.emacs.d/themes/moe-theme.el")
;;(require 'moe-theme)

;; Choose a color for mode-line.(Default: blue)
;;(moe-theme-set-color 'cyan)




;Enable Emacs to work with Muliple web formats in single file
(add-to-list 'load-path "~/.emacs.d/multi-web-mode/")

(require 'multi-web-mode)
(setq mweb-default-major-mode 'html-mode)
(setq mweb-tags '((php-mode "<\\?php\\|<\\? \\|<\\?=" "\\?>")
                  (js-mode "<script +\\(type=\"text/javascript\"\\|language=\"javascript\"\\)[^>]*>" "</script>")
                  (css-mode "<style +type=\"text/css\"[^>]*>" "</style>")))
(setq mweb-filename-extensions '("php" "htm" "html" "ctp" "phtml" "php4" "php5"))
(multi-web-global-mode 1)

;Auto Completion

(require 'package) ;; You might already have this line
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/") t)
(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
(package-initialize) ;; You might already have this line

;;; yasnippet
;;; should be loaded before auto complete so that they can work together
(require 'yasnippet)
(yas-global-mode 1)


(setq gnus-button-url 'browse-url-generic
          browse-url-generic-program "firefox"
          browse-url-browser-function gnus-button-url)

;;; auto complete mod
;;; should be loaded after yasnippet so that they can work together
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/ac-dict")
(ac-config-default)
;;; set the trigger key so that it can work together with yasnippet on tab key,
;;; if the word exists in yasnippet, pressing tab will cause yasnippet to
;;; activate, otherwise, auto-complete will
(ac-set-trigger-key "TAB")
(ac-set-trigger-key "<tab>")



(add-to-list 'load-path "~/.emacs.d/autopair-master")
(require 'autopair)
(autopair-global-mode 1)
(setq autopair-autowrap t)

(add-to-list 'load-path "~/.emacs.d/auto-complete-clang-master")
(require 'auto-complete-clang)

;neotree
(add-to-list 'load-path "~/.emacs.d/emacs-neotree-dev")
  (require 'neotree)
  (global-set-key [f8] 'neotree-toggle)



;Make tramp stop asking for password
(setq password-cache-expiry nil)


;;; ECB
;;(require 'ecb)
;(require 'ecb-autoloads)
;(setq ecb-layout-name "left3")
;(setq ecb-show-sources-in-directories-buffer 'always)
;;; activate and deactivate ecb
;(global-set-key [f8] 'ecb-activate)
;(global-set-key [f9] 'ecb-deactivate)


;; cmake mode
(setq load-path (cons (expand-file-name "~/.emacs.d/elpa/cmake-mode-20150728.708/") load-path))
 (require 'cmake-mode)


;;; cmake
(add-to-list 'load-path "~/.emacs.d/elpa/cpputils-cmake-20150623.2040/")
(require 'cpputils-cmake)

(put 'upcase-region 'disabled nil)
