;; In order to use more than one emacs configuration (which is useful
;; when converting my setup, for instance), we determine the
;; user-emacs-directory based on the location of the config file.
(setq jms/emacs-init-file load-file-name)
(setq user-emacs-directory
      (file-name-directory jms/emacs-init-file))
(setq jms/emacs-init-org-file (expand-file-name "Jonne.org"
                                                user-emacs-directory))

;; Override the built in org-mode package with the git version, if it
;; exists.
(add-to-list 'load-path (expand-file-name "lib/org-mode/lisp"
                                          user-emacs-directory))
(add-to-list 'load-path (expand-file-name "lib/org-mode/contrib/lisp"
                                          user-emacs-directory))

(require 'org)
(org-babel-load-file jms/emacs-init-org-file)
