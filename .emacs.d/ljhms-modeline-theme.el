(deftheme ljhms-modeline
  "A custom modeline")

;; Source: http://amitp.blogspot.se/2011/08/emacs-custom-mode-line.html

;; Extra mode line faces
(make-face 'mode-line-read-only-face)
(make-face 'mode-line-modified-face)
(make-face 'mode-line-filename-face)
(make-face 'mode-line-position-face)
(make-face 'mode-line-mode-face)
(make-face 'mode-line-process-face)
(make-face 'mode-line-80col-face)

;; Mode line setup
(setq-default
 mode-line-format
 '(;; Position, including warning if exceeding 80 columns
   (:propertize "%4l:" face mode-line-position-face)
   (:eval (propertize "%2c" 'face
                      (if (>= (current-column) 80)
                          'mode-line-80col-face
                        'mode-line-position-face)))

   ;; Is this frame an emacsclient?
   mode-line-client
   "  "

   ;; Read-only or modified status
   (:eval
    (cond (buffer-read-only
           (propertize " RO " 'face 'mode-line-read-only-face))
          ((buffer-modified-p)
           (propertize " ** " 'face 'mode-line-modified-face))
          (t "    ")))
   "  "

   ;; Buffer name
   (:propertize "%b"
                face mode-line-filename-face)

   ;; Narrow or not?
   " %n "

   ;; Mode indicators:

   ;; vc
   (vc-mode vc-mode)
   " "

   ;; Major mode
   (:propertize mode-name
                face mode-line-mode-face)
   " "

   ;; Process
   (:propertize mode-line-process
                face mode-line-process-face)
   "  "
   ;; Current function
   (:propertize which-func-current
                face mode-line-filename-face)))

(custom-theme-set-faces
 'ljhms-modeline
 '(mode-line ((t (:foreground "gray60" :background "gray20"
                  :inverse-video nil
                  :box (:line-width 4 :color "gray20" :style nil)))))
 '(mode-line-inactive ((t (:foreground "gray80" :background "gray40"
                           :inverse-video nil
                           :box (:line-width 4 :color "gray40" :style nil)))))
 '(mode-line-read-only-face ((t (:inherit mode-line-face
                                 :foreground "#4271ae"
                                 :box (:line-width 2 :color "#4271ae")))))
 '(mode-line-modified-face ((t (:inherit mode-line-face
                                :foreground "#c82829"
                                :background "#ffffff"
                                :box (:line-width 2 :color "#c82829")))))
 '(mode-line-filename-face ((t (:inherit mode-line-face
                                :foreground "#eab700"
                                :weight bold))))
 '(mode-line-position-face ((t (:inherit mode-line-face
                                :family "DejaVu Sans Mono"))))
 '(mode-line-mode-face ((t (:inherit mode-line-face
                            :foreground "gray80"
                            :box (:line-width 2 :color "gray60")))))
 '(mode-line-process-face ((t (:inherit mode-line-face
                               :foreground "#718c00"))))
 '(mode-line-80col-face ((t (:inherit mode-line-position-face
                             :foreground "black" :background "#eab700")))))

(provide-theme 'ljhms-modeline)
