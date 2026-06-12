(defstruct erva nome preco-base)

(defun calcula-dosagem (peso idade)
  (cond ((or (< idade 12) (< peso 30)) "10ml")
        ((or (< idade 18) (< peso 60)) "25ml")
        (t "50ml")))

(defun ajusta-preco (erva)
  (cond ((string= (erva-nome erva) "Ginseng") (* (erva-preco-base erva) 3.0))
        ((string= (erva-nome erva) "Lotus") (* (erva-preco-base erva) 1.5))
        (t (erva-preco-base erva))))

(defun descricao-erva (erva peso idade)
  (format nil "~a - Preco: ~a - Dosagem: ~a"
    (erva-nome erva)
    (ajusta-preco erva)
    (calcula-dosagem peso idade)))

(defun main ()
  (let ((ginseng (make-erva :nome "Ginseng" :preco-base 10.0))
        (lotus (make-erva :nome "Lotus" :preco-base 8.0))
        (camomila (make-erva :nome "Camomila" :preco-base 5.0)))
    (format t "~a~%" (descricao-erva ginseng 25.0 8))
    (format t "~a~%" (descricao-erva lotus 55.0 15))
    (format t "~a~%" (descricao-erva camomila 70.0 30))))

(main)
