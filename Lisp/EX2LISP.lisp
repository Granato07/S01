(defstruct criatura nome ambiente periculosidade vida-media)

(defun filtra-por-perigo (catalogo)
  (remove-if (lambda (c) (equal (criatura-periculosidade c) 'Baixa)) catalogo))

(defun relatorio-profundidade (catalogo)
  (mapcar (lambda (c) (format nil "~a: Vive em ~a" (criatura-nome c) (criatura-ambiente c)))
          (remove-if-not (lambda (c) (string= (criatura-ambiente c) "Deep")) catalogo)))

(defun descricao-criatura (c)
  (format nil "~a - ~a - ~a"
    (criatura-nome c)
    (criatura-ambiente c)
    (criatura-periculosidade c)))

(defun main ()
  (let ((catalogo (list
          (make-criatura :nome "Peeper" :ambiente "Safe Shallows" :periculosidade 'Baixa :vida-media 2.0)
          (make-criatura :nome "Reaper Leviathan" :ambiente "Crash Zone" :periculosidade 'Alta :vida-media 50.0)
          (make-criatura :nome "Ghost Leviathan" :ambiente "Deep" :periculosidade 'Alta :vida-media 80.0)
          (make-criatura :nome "Sea Dragon" :ambiente "Deep" :periculosidade 'Alta :vida-media 100.0))))
    (mapcar (lambda (c) (format t "~a~%" (descricao-criatura c))) catalogo)
    (format t "--- Perigosas ---~%")
    (mapcar (lambda (c) (format t "~a~%" (descricao-criatura c))) (filtra-por-perigo catalogo))
    (format t "--- Deep ---~%")
    (mapcar (lambda (s) (format t "~a~%" s)) (relatorio-profundidade catalogo))))

(main)
