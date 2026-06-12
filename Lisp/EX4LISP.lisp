(defstruct local nome elemento dificuldade recompensa)

(defun bonus-elemental (loc)
  (cond ((or (equal (local-elemento loc) 'Pyro) (equal (local-elemento loc) 'Electro))
         (* (local-recompensa loc) 1.2))
        ((equal (local-elemento loc) 'Cryo)
         (* (local-recompensa loc) 1.1))
        (t (local-recompensa loc))))

(defun vale-a-pena (loc)
  (and (> (bonus-elemental loc) 500) (<= (local-dificuldade loc) 3)))

(defun rota-de-farm (locais)
  (mapcar (lambda (l) (format nil "~a - Recompensa: ~a" (local-nome l) (bonus-elemental l)))
          (remove-if-not #'vale-a-pena locais)))

(defun main ()
  (let ((catalogo (list
          (make-local :nome "Dominio do Fogo" :elemento 'Pyro :dificuldade 2 :recompensa 450.0)
          (make-local :nome "Dominio do Gelo" :elemento 'Cryo :dificuldade 3 :recompensa 480.0)
          (make-local :nome "Dominio da Tempestade" :elemento 'Electro :dificuldade 4 :recompensa 600.0)
          (make-local :nome "Dominio da Agua" :elemento 'Hydro :dificuldade 1 :recompensa 300.0)
          (make-local :nome "Dominio do Vento" :elemento 'Anemo :dificuldade 2 :recompensa 520.0))))
    (mapcar (lambda (l) (format t "~a - Bonus: ~a~%" (local-nome l) (bonus-elemental l))) catalogo)
    (format t "--- Rota Recomendada ---~%")
    (mapcar (lambda (s) (format t "~a~%" s)) (rota-de-farm catalogo))))

(main)
