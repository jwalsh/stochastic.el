;;; docs.el --- Generate API documentation in Markdown
;;; Code:

(defvar stochastic-root-path
  (expand-file-name ".." (file-name-directory load-file-name)))

(defvar stochastic-lib-name
   "stochastic")

(defvar stochastic-lib-file
  (expand-file-name "stochastic.el" stochastic-root-path))

(defvar stochastic-readme-file
  (expand-file-name "README.md" stochastic-root-path))

(defvar stochastic-readme-template
  (expand-file-name "README.md.tpl" stochastic-root-path))

(defvar stochastic-fn-doc-mapping (make-hash-table :test 'equal))


;;; Commentary:
;;

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
              (progn
                (setq lib-prefix (regexp-quote (concat stochastic-lib-name "-")))
                (setq lib-internal (regexp-quote (concat stochastic-lib-name "--")))
                (setq lib-name (format "%s" (cdr fn)))
                (if (and  (string-match-p lib-prefix lib-name)
                          (not (string-match-p lib-internal lib-name)))
                    (princ (concat "\n### "
                                   (format "%s" (cdr fn))
                                   "\n"
                                   (mapconcat 'identity
                                              (mapcar (lambda (word)
                                                        (if (equal (upcase word) word)
                                                            (concat "`" word "`")
                                                          word))
                                                      (split-string
                                                       (documentation (cdr fn))
                                                       "[ ]"
                                                       t))
                                              " ")
                                   "\n"))))))
      lib)))
 load-history)

(provide 'docs)

;;; docs.el ends here
