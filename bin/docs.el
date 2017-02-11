(defvar stochastic-root-path
  (expand-file-name ".." (file-name-directory load-file-name)))

(print stochastic-root-path)

(defvar stochastic-lib-file
  (expand-file-name "stochastic.el" stochastic-root-path))

(print stochastic-lib-file)

(defvar stochastic-readme-file
  (expand-file-name "README.md" stochastic-root-path))

(defvar stochastic-readme-template
  (expand-file-name "README.md.tpl" stochastic-root-path))

(defvar stochastic-fn-doc-mapping (make-hash-table :test 'equal))

(require 'stochastic stochastic-lib-file)

(mapc
 (lambda (lib)
   (when (equal (car lib) stochastic-lib-file)
     (print lib)))
 load-history)

;; (let ((content (f-read stochastic-readme-template)))
;;  (maphash
;;   (lambda (fn doc)
;;     (setq content (s-replace (concat "{{" fn "}}") doc content)))
;;   stochastic-fn-doc-mapping)
;;  (f-write content 'utf-8 stochastic-readme-file))
