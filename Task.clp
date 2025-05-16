; animal template and rule
(deftemplate animal
   (slot type))

(defrule check_animal
   ?a <- (animal (type ?t&~dog))
   =>
   (printout t "The animal is a " ?t "." crlf))




; pos_int rule
(defrule pos_int
   (declare (salience 100))
   (number ?n)
   (test (and (integerp ?n) (> ?n 0)))
   =>
   (printout t "The number is a positive integer" crlf))
