;;; packages.el --- moore layer packages file for Spacemacs.
;;
;; Copyright (c) 2012-2017 Sylvain Benner & Contributors
;;
;; Author: 小貘 <moore@moorehy.com>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

;;; Commentary:

;; See the Spacemacs documentation and FAQs for instructions on how to implement
;; a new layer:
;;
;;   SPC h SPC layers RET
;;
;;
;; Briefly, each package to be installed or configured by this layer should be
;; added to `moore-packages'. Then, for each package PACKAGE:
;;
;; - If PACKAGE is not referenced by any other Spacemacs layer, define a
;;   function `moore/init-PACKAGE' to load and initialize the package.

;; - Otherwise, PACKAGE is already referenced by another Spacemacs layer, so
;;   define the functions `moore/pre-init-PACKAGE' and/or
;;   `moore/post-init-PACKAGE' to customize the package as it is loaded.

;;; Code:

(defconst moore-packages
  '(
    blog-admin
    doom-modeline
    doom-themes
    ;; pipenv
    ;; cnfonts
)
  "The list of Lisp packages required by the moore layer.

Each entry is either:

1. A symbol, which is interpreted as a package to be installed, or

2. A list of the form (PACKAGE KEYS...), where PACKAGE is the
    name of the package to be installed or loaded, and KEYS are
    any number of keyword-value-pairs.

    The following keys are accepted:

    - :excluded (t or nil): Prevent the package from being loaded
      if value is non-nil

    - :location: Specify a custom installation location.
      The following values are legal:

      - The symbol `elpa' (default) means PACKAGE will be
        installed using the Emacs package manager.

      - The symbol `local' directs Spacemacs to load the file at
        `./local/PACKAGE/PACKAGE.el'

      - A list beginning with the symbol `recipe' is a melpa
        recipe.  See: https://github.com/milkypostman/melpa#recipe-format")

(defun moore/init-cnfonts ()
  (use-package cnfonts
    :init
    (cnfonts-enable)
    :config
    (cnfonts-set-spacemacs-fallback-fonts)))

(defun moore/init-pipenv ()
  (use-package pipenv
    :hook
    (python-mode . pipenv-mode)
    :init
    (setq pipenv-projectile-after-switch-function #'pipenv-projectile-after-switch-extended)))

(defun moore/init-blog-admin ()
  (use-package blog-admin
    :init
    :config
      ;; your config
    (setq blog-admin-backend-type 'nikola)
    (setq blog-admin-backend-path "~/Develop/moblog/moblog/source")
    (setq blog-admin-backend-new-post-in-drafts t)
    (setq blog-admin-backend-nikola-executable "~/.virtualenvs/nikola/bin/nikola") ;; path to nikola executable
    (setq blog-admin-backend-nikola-config-file "conf.py") ;; conf.py is default
    ))

(defun moore/init-doom-modeline ()
  (use-package doom-modeline
    :init
    :ensure t
    :hook
    (after-init . doom-modeline-mode)
    :config
    ;; How tall the mode-line should be (only respected in GUI Emacs).
    (setq doom-modeline-height 25)

    ;; How wide the mode-line bar should be (only respected in GUI Emacs).
    (setq doom-modeline-bar-width 3)

    ;; Determines the style used by `doom-modeline-buffer-file-name'.
    ;;
    ;; Given ~/Projects/FOSS/emacs/lisp/comint.el
    ;;   truncate-upto-project => ~/P/F/emacs/lisp/comint.el
    ;;   truncate-from-project => ~/Projects/FOSS/emacs/l/comint.el
    ;;   truncate-with-project => emacs/l/comint.el
    ;;   truncate-except-project => ~/P/F/emacs/l/comint.el
    ;;   truncate-upto-root => ~/P/F/e/lisp/comint.el
    ;;   truncate-all => ~/P/F/e/l/comint.el
    ;;   relative-from-project => emacs/lisp/comint.el
    ;;   relative-to-project => lisp/comint.el
    ;;   file-name => comint.el
    ;;   buffer-name => comint.el<2> (uniquify buffer name)
    ;;
    ;; If you are expereicing the laggy issue, especially while editing remote files
    ;; with tramp, please try `file-name' style.
    ;; Please refer to https://github.com/bbatsov/projectile/issues/657.
    (setq doom-modeline-buffer-file-name-style 'truncate-upto-project)

    ;; Whether display icons in mode-line or not.
    (setq doom-modeline-icon t)

    ;; Whether display the icon for major mode. It respects `doom-modeline-icon'.
    (setq doom-modeline-major-mode-icon t)

    ;; Whether display color icons for `major-mode'. It respects
    ;; `doom-modeline-icon' and `all-the-icons-color-icons'.
    (setq doom-modeline-major-mode-color-icon t)

    ;; Whether display icons for buffer states. It respects `doom-modeline-icon'.
    (setq doom-modeline-buffer-state-icon t)

    ;; Whether display buffer modification icon. It respects `doom-modeline-icon'
    ;; and `doom-modeline-buffer-state-icon'.
    (setq doom-modeline-buffer-modification-icon nil)

    ;; Whether display minor modes in mode-line or not.
    (setq doom-modeline-minor-modes nil)

    ;; If non-nil, a word count will be added to the selection-info modeline segment.
    (setq doom-modeline-enable-word-count t)

    ;; If non-nil, only display one number for checker information if applicable.
    (setq doom-modeline-checker-simple-format nil)

    ;; The maximum displayed length of the branch name of version control.
    (setq doom-modeline-vcs-max-length 12)

    ;; Whether display perspective name or not. Non-nil to display in mode-line.
    (setq doom-modeline-persp-name t)

    ;; Whether display `lsp' state or not. Non-nil to display in mode-line.
    (setq doom-modeline-lsp t)

    ;; Whether display github notifications or not. Requires `ghub` package.
    (setq doom-modeline-github nil)

    ;; The interval of checking github.
    (setq doom-modeline-github-interval (* 30 60))

    ;; Whether display environment version or not
    (setq doom-modeline-env-version t)
    ;; Or for individual languages
    (setq doom-modeline-env-enable-python t)
    (setq doom-modeline-env-enable-ruby t)
    (setq doom-modeline-env-enable-perl t)
    (setq doom-modeline-env-enable-go t)
    (setq doom-modeline-env-enable-elixir t)
    (setq doom-modeline-env-enable-rust t)

    ;; Change the executables to use for the language version string
    (setq doom-modeline-env-python-executable "python3")
    (setq doom-modeline-env-ruby-executable "ruby")
    (setq doom-modeline-env-perl-executable "perl")
    (setq doom-modeline-env-go-executable "go")
    (setq doom-modeline-env-elixir-executable "iex")
    (setq doom-modeline-env-rust-executable "rustc")

    ;; Whether display mu4e notifications or not. Requires `mu4e-alert' package.
    (setq doom-modeline-mu4e t)

    ;; Whether display irc notifications or not. Requires `circe' package.
    (setq doom-modeline-irc nil)

    ;; Function to stylize the irc buffer names.
    (setq doom-modeline-irc-stylize 'identity)
    ))

(defun moore/init-doom-themes ()
  (use-package doom-themes
    :init
    :ensure t
    :config
    ;; Global settings (defaults)
    (setq doom-themes-enable-bold t    ; if nil, bold is universally disabled
          doom-themes-enable-italic t) ; if nil, italics is universally disabled

    ;; Load the theme (doom-one, doom-molokai, etc); keep in mind that each theme
    ;; may have their own settings.
    (load-theme 'doom-one t)

    ;; Enable flashing mode-line on errors
    (doom-themes-visual-bell-config)

    ;; Enable custom neotree theme (all-the-icons must be installed!)
    (doom-themes-neotree-config)
    ;; or for treemacs users
    (doom-themes-treemacs-config)

    ;; Corrects (and improves) org-mode's native fontification.
    (doom-themes-org-config)
    ))

;;; packages.el ends here
