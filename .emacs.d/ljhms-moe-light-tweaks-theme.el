(deftheme ljhms-moe-light-tweaks
  "Tweaks to moe-light.")

(custom-theme-set-faces
 'ljhms-moe-light-tweaks

 ;; lsp-ui
 '(lsp-ui-doc-background ((t (:background "light cyan" :foreground "black"))))
 '(lsp-ui-doc-header ((t (:background "cornflower blue" :foreground "white smoke"))))
 '(lsp-ui-peek-header ((t (:background "cornflower blue" :foreground "white smoke"))))
 '(lsp-ui-peek-highlight ((t (:background "indian red" :foreground "black"))))
 '(lsp-ui-peek-list ((t (:background "light cyan" :foreground "black"))))
 '(lsp-ui-peek-peek ((t (:background "light cyan" :foreground "black"))))
 '(lsp-ui-peek-selection ((t (:background "coral" :foreground "black"))))

 ;; lsp-ui-sideline
 '(lsp-ui-sideline-code-action ((t (:height 0.6 :foreground "grey45" :box (:line-width 5 :color "grey95" :style none) :background "grey95" :weight thin))))
 '(lsp-ui-sideline-current-symbol ((t (:foreground "dim gray" :box (:line-width -1 :color "dim gray") :weight ultra-bold :height 0.6))))

 ;; Company
 '(company-preview ((t (:background "light cyan" :foreground "black"))))
 '(company-preview-common ((t (:background "cornflower blue" :foreground "white smoke"))))
 '(company-preview-search ((t (:background "light cyan" :foreground "black" :weight bold))))
 '(company-tooltip ((t (:background "light cyan" :foreground "black"))))
 '(company-tooltip-annotation ((t (:background "light cyan" :foreground "black"))))
 '(company-tooltip-common ((t (:background "light cyan" :foreground "black"))))
 '(company-tooltip-common-selection ((t (:background "cornflower blue" :foreground "white smoke" :weight bold)))))

(provide-theme 'ljhms-moe-light-tweaks)
