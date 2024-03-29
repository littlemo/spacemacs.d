(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(company-minimum-prefix-length 1)
 '(evil-want-Y-yank-to-eol nil)
 '(exec-path-from-shell-arguments (quote ("-l")))
 '(flycheck-pylint-use-symbolic-id nil)
 '(flycheck-pylintrc ".pylintrc.conf")
 '(global-pangu-spacing-mode nil)
 '(global-whitespace-mode nil)
 '(global-whitespace-newline-mode t)
 '(next-line-add-newlines t)
 '(org-babel-load-languages
   (quote
    ((shell . t)
     (python . t)
     (emacs-lisp . t)
     (js . t))))
 '(org-confirm-babel-evaluate nil)
 '(org-export-backends (quote (ascii html icalendar latex md)))
 '(org-src-fontify-natively t)
 '(org-startup-indented t)
 '(org-structure-template-alist
   (quote
    (("n" . "notes")
     ("a" . "export ascii")
     ("c" . "center")
     ("C" . "comment")
     ("e" . "example")
     ("E" . "export")
     ("h" . "export html")
     ("l" . "export latex")
     ("q" . "quote")
     ("s" . "src")
     ("v" . "verse"))))
 '(package-selected-packages
   (quote
    (plantuml-mode blog-admin ctable csv-mode vimrc-mode dactyl-mode yaml-mode cnfonts ranger youdao-dictionary names chinese-word-at-point fcitx pyim pyim-basedict pangu-spacing find-by-pinyin-dired ace-pinyin pinyinlib web-beautify livid-mode skewer-mode simple-httpd json-mode json-snatcher json-reformat js2-refactor multiple-cursors js2-mode js-doc company-tern tern coffee-mode xterm-color shell-pop multi-term eshell-z eshell-prompt-extras esh-help unfill smeargle orgit mwim mmm-mode markdown-toc markdown-mode magit-gitflow helm-gitignore gitignore-mode gitconfig-mode gitattributes-mode git-timemachine git-messenger git-link gh-md flyspell-correct-helm flyspell-correct flycheck-pos-tip pos-tip flycheck evil-magit magit magit-popup git-commit ghub treepy graphql with-editor auto-dictionary org-projectile org-category-capture org-present org-pomodoro alert log4e gntp org-mime org-download htmlize helm-company helm-c-yasnippet gnuplot fuzzy company-web web-completion-data company-statistics company-anaconda company auto-yasnippet yasnippet ac-ispell auto-complete yapfify pyvenv pytest pyenv-mode py-isort pip-requirements live-py-mode hy-mode dash-functional helm-pydoc cython-mode anaconda-mode pythonic less-css-mode reveal-in-osx-finder pbcopy osx-trash osx-dictionary launchctl web-mode tagedit slim-mode scss-mode sass-mode pug-mode helm-css-scss haml-mode emmet-mode ws-butler winum which-key volatile-highlights vi-tilde-fringe uuidgen use-package toc-org spaceline powerline restart-emacs request rainbow-delimiters popwin persp-mode pcre2el paradox spinner org-plus-contrib org-bullets open-junk-file neotree move-text macrostep lorem-ipsum linum-relative link-hint info+ indent-guide hydra hungry-delete hl-todo highlight-parentheses highlight-numbers parent-mode highlight-indentation hide-comnt help-fns+ helm-themes helm-swoop helm-projectile helm-mode-manager helm-make projectile pkg-info epl helm-flx helm-descbinds helm-ag google-translate golden-ratio flx-ido flx fill-column-indicator fancy-battery eyebrowse expand-region exec-path-from-shell evil-visualstar evil-visual-mark-mode evil-unimpaired evil-tutor evil-surround evil-search-highlight-persist evil-numbers evil-nerd-commenter evil-mc evil-matchit evil-lisp-state smartparens evil-indent-plus evil-iedit-state iedit evil-exchange evil-escape evil-ediff evil-args evil-anzu anzu evil goto-chg undo-tree eval-sexp-fu highlight elisp-slime-nav dumb-jump f dash s diminish define-word column-enforce-mode clean-aindent-mode bind-map bind-key auto-highlight-symbol auto-compile packed aggressive-indent adaptive-wrap ace-window ace-link ace-jump-helm-line helm avy helm-core popup async)))
 '(plantuml-default-exec-mode (quote jar) t)
 '(pyim-dicts
   (quote
    ((:name "pyim-bigdict.pyim" :file "/Users/moore/.spacemacs.d/pyim-bigdict.pyim"))))
 '(python-check-command "pylint")
 '(python-fill-docstring-style (quote symmetric))
 '(python-indent-guess-indent-offset t)
 '(python-skeleton-autoinsert t)
 '(pyvenv-mode t)
 '(pyvenv-tracking-mode t)
 '(pyvenv-virtualenvwrapper-python "/Users/moore/.pyenv/shims/python")
 '(pyvenv-workon "sublime2")
 '(safe-local-variable-values
   (quote
    ((pytest-cmd-flags . "--color=auto --rootdir=tests --log-level=INFO --cov=src/pangu --cov-branch --cov-report=html:htmlcov -vv --disable-warnings -x -s")
     (pytest-global-name . "env UNIT_TEST_MODE=true /Volumes/Develop/.virtualenvs/pangu/bin/pytest")
     (add-to-list
      (quote grep-find-ignored-directories)
      "ext_lib")
     (pytest-cmd-format-string . "cd '%s' && %s %s %s")
     (python-indent-offset . 4)
     (pyvenv-workon . "pangu")
     (projectile-project-name . "pangu")
     (projectile-globally-ignored-files . *\.pyc))))
 '(show-trailing-whitespace nil)
 '(tab-width 4)
 '(whitespace-action (quote (auto-cleanup)))
 '(whitespace-display-mappings
   (quote
    ((space-mark 32
                 [183]
                 [46])
     (space-mark 160
                 [164]
                 [95])
     (tab-mark 9
               [187 9]
               [92 9]))))
 '(whitespace-global-modes (quote (not prog-mode))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(whitespace-indentation ((t (:foreground "#444"))))
 '(whitespace-space ((t (:foreground "#444")))))
