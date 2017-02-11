(defvar stochastic-root-path
  (expand-file-name ".." (file-name-directory load-file-name)))

(defvar stochastic-lib-file
  (expand-file-name "stochastic.el" stochastic-root-path))

(defvar stochastic-readme-file
  (expand-file-name "README.md" stochastic-root-path))

(defvar stochastic-readme-template
  (expand-file-name "README.md.tpl" stochastic-root-path))

(defvar stochastic-fn-doc-mapping (make-hash-table :test 'equal))

(require 'stochastic stochastic-lib-file)

(mapc
 (lambda (lib)
   (if (and
        (listp lib)
        (equal (car lib) stochastic-lib-file))
     (mapc
      (lambda (fn)
        (if (and (listp fn)
                 (equal 'defun (car fn)))
            (princ (concat "\n### " (format "%s" (cdr fn)) "\n"))))
      lib)))
 load-history)
