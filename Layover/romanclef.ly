\version "2.16.2"
% moderntab clef with serif
  %% -> tablature.scm

%% define tab-Clefs as a markup:
  #(define-markup-command (customTabClefII
                          layout props num-strings staff-space)
    (integer? number?)
    #:category music
    "Draw a tab clef sans-serif style."
    (define (square x) (* x x))
    (let* ((scale-factor (/ staff-space 1.5))
           (font-size (- (* num-strings 1.5 scale-factor) 7))
           (base-skip (* (square (+ (* num-strings 0.195) 0.4)) scale-factor)))
  ;font-name
      (interpret-markup layout props
                   (markup #:vcenter #:bold
  ;; !!!!!!!!!!!!!!!!!!!!!!!!!!!
                           ;; change 'font-family and/or 'font-name
                           ;; to fit your needs
                           #:override (cons 'font-family 'roman) ;; default: 'sans
                           ;#:override (cons 'font-name "DejaVu")
                           #:fontsize font-size
                           #:override (cons 'baseline-skip base-skip)
                           #:left-align #:center-column ("T" "A" "B")))))

%% this function decides which clef to take
  #(define-public (clef::print-modern-custom-tab-if-set grob)
    (let ((glyph (ly:grob-property grob 'glyph)))

      ;; which clef is wanted?
      (if (string=? glyph "markup.moderntabII")
          ;; if it is "moderntabII", we'll draw it
          (let* ((staff-symbol (ly:grob-object grob 'staff-symbol))
                 (line-count (if (ly:grob? staff-symbol)
                                 (ly:grob-property staff-symbol 'line-count)
                                 0))
                 (staff-space (ly:staff-symbol-staff-space grob)))

            (grob-interpret-markup grob (make-customTabClefII-markup line-count
                                                                   staff-space)))
          ;; otherwise, we simply use the default printing routine
          (ly:clef::print grob))))

%% definitions for the "moderntabII" clef:
  %% the "moderntabII" clef will be added to the list of known clefs,
  %% so it can be used as any other clef: \clef "moderntabII"
  #(add-new-clef "moderntabII" "markup.moderntabII" 0 0 0)


  %% DELETE ME
  %{
  %% Displaying some glyph/lists
  displayClefGlyph =
      \override Staff.Clef #'before-line-breaking =
        #(lambda (grob)
          (let* ((glyph (ly:grob-property grob 'glyph)))
         (newline)
         (display glyph)))

  #(use-modules (ice-9 pretty-print))
  #(pretty-print supported-clefs)
  #(newline)
  #(newline)
  #(newline)
  #(pretty-print (@@ (lily) c0-pitch-alist))
  %}

%% usage
  %{ usage:
  \layout {
    \context {
      \TabStaff
      \override Clef #'stencil = #clef::print-modern-custom-tab-if-set
      %% DELETE ME
      %\displayClefGlyph
    }
  }
  %}

  %{ usage:



  \new TabStaff {
      \clef moderntabII
      a1
  }
 
 
  
  %}
