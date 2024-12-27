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
 '(company-tooltip-common-selection ((t (:background "cornflower blue" :foreground "white smoke" :weight bold))))

 ;; magit-blame

 ;; Set an explicit background color for the first and subsequent
 ;; blame lines for a commit, as well as an overline on the first
 ;; line. We must make sure to set default values to the other fields,
 ;; because they may be affected by other overlays for that particular
 ;; line, e.g. bold from an org-header bleeding into the blame margin.
 '(magit-blame-margin ((t (:inherit (magit-blame-highlight) :weight semibold :slant normal :underline nil :background "#ffd787" :overline t))))
 '(magit-blame-dimmed ((t (:inherit (magit-blame-highlight) :weight extra-light :slant normal :underline nil :background "#ffffaf":overline nil))))

 ;; Next make the font of the first line (the summary) inherit from
 ;; `magit-blame-margin' and set the background to nil to inherit it.
 ;; Similarly, the subsequent fields inherit their backgrounds from
 ;; `magit-blame-dimmed'.
 '(magit-blame-summary ((t (:inherit magit-blame-margin :background nil))))
 '(magit-blame-date ((t (:inherit magit-blame-dimmed :background nil))))
 '(magit-blame-name ((t (:inherit magit-blame-dimmed :background nil))))
 '(magit-blame-hash ((t (:inherit magit-blame-dimmed :foreground "#b2b2b2" :background nil)))))

(provide-theme 'ljhms-moe-light-tweaks)
