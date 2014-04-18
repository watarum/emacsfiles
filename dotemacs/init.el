;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; マックの為のセッティング
(setq default-input-method "MacOSX")
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; loadpath
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(add-to-list 'load-path (expand-file-name "~/.emacs.d"))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; my custum setting
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;Macでシェルモードを使わない
(x-focus-frame nil)

;;ツールバーを消す
(tool-bar-mode 0)

;; 起動時の画面を消す
(setq inhibit-startup-message t)

;; スクロールバーを消す
(toggle-scroll-bar nil)

;; DnDでファイルを開く
(define-key global-map [ns-drag-file] 'ns-find-file)
(setq ns-pop-up-frames nil)

;; タイトルバーにファイル名
(setq frame-title-format (format "%%f - Emacs@%s" (system-name)))

;; 起動時の画面サイズの設定
  (set-background-color "Black")
  (set-foreground-color "Green")
  (set-cursor-color "Gray")
  (set-frame-parameter nil 'alpha 80)

;; バックアップファイルを作らない
(setq backup-inhibited t)

;; 終了時にオートセーブファイルを消す
(setq delete-auto-save-files t)

;; (yes/no) を (y/n)に
(fset 'yes-or-no-p 'y-or-n-p)

;;; 画像ファイルを表示する
(auto-image-file-mode t)

;;行末の空白を表示
(setq-default show-trailing-whitespace t)

;; 最終行に必ず一行挿入する。
(setq require-final-newline t)

;; 行と列番号を下の方に表示
(line-number-mode t)
(column-number-mode t)

;;左側に行番号を表示
(global-linum-mode t)

;; 対応する括弧をハイライト
(show-paren-mode t)

;;マウス操作使用
(setq mouse-drag-copy-region t)

;; 最近使ったファイルを保存(Ctrl-c/Ctrl-fで開く)
(recentf-mode)
(global-set-key "\C-c\C-f" 'recentf-open-files)

;; カーソル行をハイライト
(defface hlline-face
  '((((class color)
      (background dark))
     (:background "dark slate gray"))
    (((class color)
      (background light))
     (:background "#CC0066"))
    (t
     ()))
  "*Face used by hl-line.")
(setq hl-line-face 'hlline-face)
(global-hl-line-mode)

;;補完で大文字小文字無視
(setq completion-ignore-case t)

;;時間を表示する
(display-time)

;;パッケージ追加
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;旧.emacsここまで
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;ido
(require 'ido)
(ido-mode t)

;;emacs-pry https://github.com/jacott/emacs-pry
(add-to-list 'load-path "~/.emacs.d/vendor/emacs-pry")
(require 'pry)
;; optional suggestions
(global-set-key [S-f9] 'pry-intercept)
(global-set-key [f9] 'pry-intercept-rerun)

