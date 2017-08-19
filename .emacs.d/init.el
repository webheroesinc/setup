
;; These are the custom packages you want always installed.
(setq package-list '(ac-html multiple-cursors yasnippet multi-web-mode))

;; Setup package archives.
(setq package-archives '( ("melpa" . "http://melpa.org/packages/")
			  ("gnu" . "http://elpa.gnu.org/packages/") ) )
(package-initialize)

;; Fetch the list of packages available.
(unless package-archive-contents
    (package-refresh-contents))

;; Install Packages.
(dolist  (package package-list )
  (unless (package-installed-p package)
    (package-install package) ) )

;; Activate modes.
(ido-mode 1)
(auto-complete-mode 1)
(global-auto-revert-mode 1)
(yas-global-mode 1)
  
;; Setup multiple cursors mode.
(global-set-key (kbd "C-x =") 'mc/mark-all-like-this)

;;; General configurations
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(css-indent-offset 2)
 '(sgml-basic-offset 4)
 '(truncate-lines t)
 '(yas-prompt-functions (quote (yas-dropdown-prompt) ) ) )

(put 'downcase-region 'disabled nil)
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(font-lock-string-face ((t (:foreground "white")))))

(require 'multi-web-mode)
(setq mweb-default-major-mode 'html-mode)
(setq mweb-tags '((php-mode "<\\?php\\|<\\? \\|<\\?=" "\\?>")
		  (js-mode "<script +\\(type=\"text/javascript\"\\|language=\"javascript\"\\)[^>]*>" "</script>")
		  (css-mode "<style +type=\"text/css\"[^>]*>" "</style>")))
(setq mweb-filename-extensions '("php" "htm" "html" "ctp" "phtml" "php4" "php5"))
(multi-web-global-mode 1)
(put 'upcase-region 'disabled nil)

;; Set auto wrap at 100 characters
(setq-default fill-column 100)

