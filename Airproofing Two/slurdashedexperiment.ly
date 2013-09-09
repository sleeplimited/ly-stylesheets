\version "2.16.2"
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  % A function to modify the shape of slurs by offsetting the positions property
  % from default control-point values. Setting either y1 or y2 to zero will leave
  % that attachment-point unchanged. Syntax: \offsetPositions #'(y1 . y2)
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
offsetPositions =
  #(define-music-function (parser location offsets) (pair?)
    #{
       \once \override TabStaff.Slur #'positions = #(lambda (grob) 
	 `(,(+ (car $offsets) (cdar (ly:slur::calc-control-points grob))) . 
	   ,(+ (cdr $offsets) (cdr (cadddr (ly:slur::calc-control-points grob))))))
    #})


shapeSlur =
  #(define-music-function (parser location offsets) (list?)
    #{
       \once \override Slur #'control-points = #(alter-curve $offsets)
    #})

#(define ((alter-curve offsets) grob)
   (let ((coords (ly:slur::calc-control-points grob)))

     (define (add-offsets coords offsets)
       (if (null? coords)
       '()
       (cons
	 (cons (+ (caar coords) (car offsets))
	       (+ (cdar coords) (cadr offsets)))
	 (add-offsets (cdr coords) (cddr offsets)))))

     (add-offsets coords offsets)))

\new TabStaff {
  \shapeSlur #'(0 1 1 0 0 0 0 0) g8( a, e < fis, \parenthesize a>) 

}
