
;; example_el  -- Rename to example.el to activate, and restart emacs

;; Here are some examples of how to override the defaults for the
;; various prelude-emacs settings.  To *append* to any of the
;; configurations attached to prelude-*-hooks, you can attach a
;; function to the appropriate hook:

(add-hook 'prelude-prog-mode-hook
          (lambda ()
            (prelude-turn-off-whitespace)
            (remove-hook 'before-save-hook 'whitespace-cleanup t)) t)

;; For other global settings, just run the appropriate function; all
;; personal/*.el files will be evaluate after prelude-emacs is loaded.

(global-hl-line-mode -1)
(blink-cursor-mode t)

(disable-theme 'zenburn)

(setq-default fill-column 80)

;; truncate lines by default
(setq-default truncate-lines t)

;; shortcut for comment region
(global-unset-key "\C-c\C-c")
(global-set-key "\C-c\C-c" 'comment-region)

;; shortcut for uncomment region
(global-unset-key "\C-c\C-u")
(global-set-key "\C-c\C-u" 'uncomment-region)

;; this lets us have long lines go off the side of the screen instead of hosing
;; up the ascii art
(global-unset-key "\C-c\C-y")
(global-set-key "\C-c\C-y" 'toggle-truncate-lines)

;; define ditaa command
(setq ditaa-cmd "java -jar ~/.emacs.d/personal/org-mode/contrib/scripts/ditaa.jar")
(defun djcb-ditaa-generate ()
  (interactive)
  (shell-command
   (concat ditaa-cmd " " buffer-file-name)))
