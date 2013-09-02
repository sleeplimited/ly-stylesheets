% Right-Hand Articulations
%% p i m a c
rhc = \markup { \halign #CENTER \sans \fontsize #-5 "c" }
rha = \markup { \halign #CENTER \sans \fontsize #-5 "a" }
rhm = \markup { \halign #CENTER \sans \fontsize #-5 "m" }
rhi = \markup { \halign #CENTER \sans \fontsize #-5 "i" }
rhp = \markup { \halign #CENTER \sans \fontsize #-5 "p" }
%% Flicks Two arrow Heads
oneStrFlick = \markup { \rotate #180
  \center-column {
    \combine
    \draw-line #'(0 . 1.4)
    \combine
    \fontsize #-3 
    \arrow-head #Y #DOWN ##f
    \raise #0.4
    \fontsize #-3 
    \arrow-head #Y #DOWN ##f
  }  
  }
oneStrMFlick = \markup {  
    \center-column {
      \rotate #180 {
        \combine
          \draw-line #'(0 . 1.2)
          \combine
            \fontsize #-3 
            \arrow-head #Y #DOWN ##f
            \raise #0.4
            \fontsize #-3 
            \arrow-head #Y #DOWN ##f
      }
  \raise #2.2
   \sans \fontsize #-5 "m" 
 } 
 }
  
twoStrFlick = \markup { \rotate #180
  \center-column {
    \combine
    \draw-line #'(0 . 2.5)
    \combine
    \fontsize #-3 
    \arrow-head #Y #DOWN ##f
    \raise #0.4
    \fontsize #-3 
    \arrow-head #Y #DOWN ##f
  
  }

}
twoStrMFlick = \markup {   
  \center-column {
   \rotate #180 {
   \combine
    \draw-line #'(0 . 2.7)
    \combine
    \fontsize #-3 
    \arrow-head #Y #DOWN ##f
    \raise #0.4
    \fontsize #-3 
    \arrow-head #Y #DOWN ##f
  }
  \raise #2.2
   \sans \fontsize #-5 "m" 
  }

}
threeStrFlick = \markup { \rotate #180
  \center-column {
    \combine
    \draw-line #'(0 . 4.0)
    \combine
    \fontsize #-3 
    \arrow-head #Y #DOWN ##f
    \raise #0.4
    \fontsize #-3 
    \arrow-head #Y #DOWN ##f
  
  }

}
threeStrMFlick = \markup {   
  \center-column {
   \rotate #180 {
   \combine
    \draw-line #'(0 . 4.1)
    \combine
    \fontsize #-3 
    \arrow-head #Y #DOWN ##f
    \raise #0.4
    \fontsize #-3 
    \arrow-head #Y #DOWN ##f
  }
  \raise #2.2
   \sans \fontsize #-5 "m" 
  }

}
fourStrFlick = \markup { \rotate #180
  \center-column {
    \combine
    \draw-line #'(0 . 5.7)
    \combine
    \fontsize #-3 
    \arrow-head #Y #DOWN ##f
    \raise #0.4
    \fontsize #-3 
    \arrow-head #Y #DOWN ##f
  
  }

}
fiveStrFlick = \markup { \rotate #180
  \center-column {
    \combine
    \draw-line #'(0 . 7.2)
    \combine
    \fontsize #-3 
    \arrow-head #Y #DOWN ##f
    \raise #0.4
    \fontsize #-3 
    \arrow-head #Y #DOWN ##f
  
  }

}
sixStrFlick = \markup { \rotate #180
  \center-column {
    \combine
    \draw-line #'(0 . 8.8)
    \combine
    \fontsize #-3 
    \arrow-head #Y #DOWN ##f
    \raise #0.4
    \fontsize #-3 
    \arrow-head #Y #DOWN ##f
  
  }

}

%% Down Strums 1 arrow head
onestrdwnstrm = \markup { \rotate #180 
  \center-column {
    \combine
    \draw-line #'(0 . 1.5)
    \arrow-head #Y #DOWN ##t
    }
  }
twostrdwnstrm = \markup { \rotate #180 
  \center-column {
    \combine
    \draw-line #'(0 . 2.5)
    \arrow-head #Y #DOWN ##t
    }
  }
threestrdwnstrm = \markup { \rotate #180 
  \center-column {
    \combine
    \draw-line #'(0 . 4)
    \arrow-head #Y #DOWN ##t
    }
  }
fourstrdwnstrm = \markup { \rotate #180 
  \center-column {
    \combine 
    \override #'(thickness . 0.08)
    \draw-line #'(0 . 5.8)
    \arrow-head #Y #DOWN ##t
    }
  }
fivestrdwnstrm = \markup { \rotate #180 
  \center-column {
    \combine
    \draw-line #'(0 . 7.2)
    \arrow-head #Y #DOWN ##t
   }
  }
sixstrdwnstrm = \markup {
  \center-column {
  \rotate #180 {
    \combine
    \draw-line #'(0 . 8.8)
    \arrow-head #Y #DOWN ##t
  }
    }
  }
sixstrupstrm = \markup {
  \center-column {
    \combine
    \draw-line #'(0 . 8.8)
    \arrow-head #Y #DOWN ##t
    }
  }
fivestrupstrm = \markup {  
  \center-column {
    \combine
    \draw-line #'(0 . 7.2)
    \arrow-head #Y #DOWN ##t
   }
  }
fourstrupstrm = \markup {  
  \center-column {
    \combine
    \draw-line #'(0 . 5.8)
    \arrow-head #Y #DOWN ##t
    }
  }
threestrupstrm = \markup {
  \center-column {
    \combine
    \draw-line #'(0 . 4)
    \arrow-head #Y #DOWN ##t
    }
  }
twostrupstrm = \markup {  
  \center-column {
    \combine
    \override #'(thickness . 0.08)
    \draw-line #'(0 . 2.5)
    \arrow-head #Y #DOWN ##t
    }
  }
onestrupstrm = \markup {  
  \center-column {
    \combine
    \draw-line #'(0 . 1.5)
    \arrow-head #Y #DOWN ##t
    }
  }
%% String-Dampening
strDampening = { 
  \once \override TextSpanner #'style = #'line
  \once \override TextSpanner #'thickness = #8
  \once \override TextSpanner #'color = #(x11-color "plum")
  \once \override TextSpanner #'layer = #-1
}
twoStrDamp = {
  \once \override TextSpanner #'style = #'line
  \once \override TextSpanner #'thickness = #8
  \once \override TextSpanner #'color = #(x11-color "plum")
  \once \override TextSpanner #'layer = #-1
  \once \override TextSpanner #'(bound-details left text) = \markup {
    \lower #0.76
    \halign #CENTER
     \beam #0.6 #0 #2.2 }
   }
threeStrDamp = {
  \once \override TextSpanner #'style = #'line
  \once \override TextSpanner #'thickness = #8
  \once \override TextSpanner #'color = #(x11-color "plum")
  \once \override TextSpanner #'layer = #-1
  \once \override TextSpanner #'(bound-details left text) = \markup {
    \lower #1.52
    \halign #CENTER
     \beam #0.6 #0 #3.7 }

}
% Left Hand Articulations
%% 1 2 3 4 t
lhone = \markup { \sans \fontsize #-8 \override #'(thickness . 0.08) \circle \pad-markup #0.2 "1" }
lhtwo = \markup { \sans \fontsize #-8 \override #'(thickness . 0.08) \circle \pad-markup #0.2 "2" }
lhthree = \markup { \sans \fontsize #-8 \override #'(thickness . 0.08) \circle \pad-markup #0.2 "3" }
lhfour = \markup { \sans \fontsize #-8 \override #'(thickness . 0.08) \circle \pad-markup #0.2 "4" }
lhthumb = \markup { \sans \fontsize #-8 \override #'(thickness . 0.08) \circle \pad-markup #0.2 "t" }
%% Guide fingers
lhguideone = \markup { \sans \fontsize #-8 \override #'(thickness . 0.08) \circle \pad-markup #0.2 "-1" }
lhguidetwo = \markup {\sans  \fontsize #-8  \override #'(thickness . 0.08) \circle \pad-markup #0.2 "-2" }
lhguidethree = \markup {\sans  \fontsize #-8 \override #'(thickness . 0.08) \circle \pad-markup #0.2 "-3" }
lhguidefour = \markup {\sans  \fontsize #-8 \override #'(thickness . 0.08) \circle \pad-markup #0.2 "-4" }
lhguidethumb = \markup {\sans  \fontsize #-8 \override #'(thickness . 0.08) \circle \pad-markup #0.2 "-t" }
%% TODO add left-hand fingering with Text-Spanners
  % contributed by harm6
  % Code by David Nalesnik and Thomas Morley (v2.16.0)
  % => http://lists.gnu.org/archive/html/lilypond-user/2011-10/msg00500.html
  % => http://lists.gnu.org/archive/html/lilypond-user/2012-11/msg00567.html
  % ==========================
  % Modified 2013 by Rachael Thomas Carlson
  % Added a slight bracket at the end of the function
#(define (text-spanner-start-stop mus)
    (let ((elts (ly:music-property mus 'elements)))
    (make-music 'SequentialMusic 'elements 
       (append  
          (list (make-music 'TextSpanEvent 'span-direction -1))
          (reverse (cdr (reverse elts)))
          (list (make-music 'TextSpanEvent 'span-direction 1))
          (list (last elts))))))

barre =
#(define-music-function (parser location strg music)(string? ly:music?)
   (let ((arg (string-append "B " strg)))
      #{
         \override TextSpanner #'(bound-details left text) = $arg
         #(text-spanner-start-stop music)
      #}))
      
lhSpannerDown =
#(define-music-function (parser location strg music)
   (string? ly:music?)
  #{
     \once \override Voice.TextSpanner #'style = #'solid
     \once \override Voice.TextSpanner #'font-size = #-5
     \once \override Voice.TextSpanner #'thickness = #0
     \once \override TextSpanner #'(bound-details left stencil-align-dir-y) = #CENTER
     \once \override TextSpanner #'(bound-details right text) = \markup {
     \draw-line #'(0 . 0.5) }
     \once \override TextSpanner #'(bound-details left text) = \markup {
     \sans { \circle \pad-markup #0.1 \upright { $strg }}}
  
     #(text-spanner-start-stop music)
  #})

lhSpannerUp =
#(define-music-function (parser location strg music)
   (string? ly:music?)
  #{
     \once \override Voice.TextSpanner #'style = #'solid
     \once \override Voice.TextSpanner #'font-size = #-5
     \once \override TextSpanner #'(bound-details left stencil-align-dir-y) = #CENTER
     \once \override TextSpanner #'(bound-details right text) = \markup {
     \draw-line #'(0 . -0.5) }
     \once \override TextSpanner #'(bound-details left text) = \markup {
     \sans { \circle \pad-markup #0.1 \upright { $strg } }}
  
     #(text-spanner-start-stop music)
  #})

%% Partial barreing

  % The below, invented by Mats Bengtsson, creates left and right brackets
  % vertically % spanning an entire staff. It is useful for offseting optional
  % passages of music, % as shown in the example % Modified by Rachael Thomas
  % Carlson to be used for partial barreing in % tabulature.  2013 % The number
  % next to "th" in (th 0.2) controls thickness of the brackets. 
#(define-markup-command (left-bracket-two layout props) ()
"Draw left hand bracket for two strings"
(let* ((th 0.1) ;; todo: take from GROB
	(width (* 3.5 th)) ;; todo: take from GROB
	(ext '(-1.25 . 1.25))) ;; todo: take line-count into account
	(ly:bracket Y ext th width)))

leftBracketTwo = {
\once\override BreathingSign #'text = #(make-left-bracket-two-markup)
\once\override BreathingSign #'break-visibility = #end-of-line-invisible
\once\override BreathingSign #'Y-offset = ##f
  % Trick to print it after barlines and signatures:
\once\override BreathingSign #'break-align-symbol = #'custos
\breathe 
}

#(define-markup-command (left-bracket-three layout props) ()
"Draw left hand bracket for three strings"
(let* ((th 0.08) ;; todo: take from GROB
	(width (* 3.5 th)) ;; todo: take from GROB
	(ext '(-1.3 . 2.8))) ;; todo: take line-count into account
	(ly:bracket Y ext th width)))

leftBracketThree = {
\once\override BreathingSign #'text = #(make-left-bracket-three-markup)
\once\override BreathingSign #'break-visibility = #end-of-line-invisible
\once\override BreathingSign #'Y-offset = ##f
  % Trick to print it after barlines and signatures:
\once\override BreathingSign #'break-align-symbol = #'custos
\breathe 
}
#(define-markup-command (right-bracket-three layout props) ()
"Draw right hand bracket"
(let* ((th 0.08);;todo: take from GROB
(width (* 3.5 th)) ;; todo: take from GROB
	(ext '(-1.3 . 2.8))) ;; todo: take line-count into account
	(ly:bracket Y ext th (- width))))

rightBracketThree = {
\once\override BreathingSign #'text = #(make-right-bracket-three-markup)
\once\override BreathingSign #'break-visibility = #end-of-line-invisible
\once\override BreathingSign #'Y-offset = ##f
\once\override BreathingSign #'break-align-symbol = #'custos
\breathe
}

#(define-markup-command (right-bracket-two layout props) ()
"Draw right hand bracket"
(let* ((th 0.05);;todo: take from GROB
(width (* 12.5 th)) ;; todo: take from GROB
	(ext '(-1.5 . 1.5))) ;; todo: take line-count into account
	(ly:bracket Y ext th (- width))))

rightBracketTwo = {
\once\override BreathingSign #'text = #(make-right-bracket-two-markup)
\once\override BreathingSign #'break-visibility = #end-of-line-invisible
\once\override BreathingSign #'Y-offset = ##f
\once\override BreathingSign #'break-align-symbol = #'custos
\breathe
}

#(define-markup-command (right-bracket-four layout props) ()
"Draw right hand bracket"
(let* ((th 0.05);;todo: take from GROB
(width (* 12.5 th)) ;; todo: take from GROB
	(ext '(-1.5 . 4.5))) ;; todo: take line-count into account
	(ly:bracket Y ext th (- width))))

rightBracketFour = {
\once\override BreathingSign #'text = #(make-right-bracket-four-markup)
\once\override BreathingSign #'break-visibility = #end-of-line-invisible
\once\override BreathingSign #'Y-offset = ##f
\breathe
}

#(define-markup-command (right-bracket-five layout props) ()
"Draw right hand bracket"
(let* ((th 0.05);;todo: take from GROB
(width (* 12.5 th)) ;; todo: take from GROB
	(ext '(-1.5 . 6))) ;; todo: take line-count into account
	(ly:bracket Y ext th (- width))))

rightBracketFive = {
\once\override BreathingSign #'text = #(make-right-bracket-five-markup)
\once\override BreathingSign #'break-visibility = #end-of-line-invisible
\once\override BreathingSign #'Y-offset = ##f
\breathe
}
% Percussion
snare = \markup {
  \center-column {
    \combine
    \override #'(thickness . 1.3)
    \draw-line #'(0 . 3)
    \halign #CENTER
    \override #'(box-padding . 0) 
    \box {
      \draw-line #'(1 . 0.25)
    }
  }
}
bass = \markup {
  \center-column {
    \combine
    \override #'(thickness . 1.3)
    \draw-line #'(0 . 3)
    \halign #CENTER
    \override #'(box-padding . 0)
    \box {
      \filled-box #'(0 . 0.5) #'(0 . 0.5) #0
    }
  }
}
longBass = \markup {
  \center-column {
    \combine
    \override #'(thickness . 1.3)
    \draw-line #'(0 . 6)
    \halign #CENTER
    \override #'(box-padding . 0)
    \box {
      \filled-box #'(0 . 0.5) #'(0 . 0.5) #0
    }
  }
}
bassSnare = \markup {
  \center-column {
    \combine
    \override #'(thickness . 1.3)
    \draw-line #'(0 . 2)
    \halign #CENTER
    \override #'(box-padding . 0) 
    \box {
      \draw-line #'(1 . 0.25) }
    \raise #2
      \combine
      \draw-line#'(0 . 1)
      \halign #CENTER
      \filled-box #'(-0.1 . 0.6) #'(-0.1 . 0.6) #0.2 
  }
}
tomTom = \markup {
  \center-column {
    \combine
      \override #'(thickness . 1.3)
    \draw-line #'(0 . 3)
    \halign #CENTER
    \override #'(box-padding . 0.1)
    \box {
      \override #'(thickness . 1.3)
      \draw-line #'(0.75 . 0) 
    }
  }
}
% Misc.
%% extendLV
extendLV = #(define-music-function (parser location further) (number?) 
#{
   \once \override LaissezVibrerTie  #'X-extent = #'(0 . 0)
   \once \override LaissezVibrerTie  #'details #'note-head-gap = #(/ further -2)
   \once \override LaissezVibrerTie  #'extra-offset = #(cons (/ further 2) 0)
#})
%%{ hideFretNumber to be used with creating slides from and to nowhere %}
hideFretNumber = {
  \once \override TabNoteHead #'transparent = ##t
  \once \override NoteHead #'transparent = ##t
  \once \override Stem #'transparent = ##t
  \once \override Flag #'transparent = ##t
  \once \override NoteHead #'no-ledgers = ##t
  \once \override Glissando #'(bound-details left padding) = #0.3
}
%%{ fakeSlur to be used to create ascending and descending slurs in tabulature
    %that are more attractive than faking it otherwise %}
fakeSlur = 
#(define-music-function
   (parser location note)
   (ly:music?)
   #{
   \tweak TabNoteHead #'transparent ##t
   \tweak Dots #'transparent ##t
   #note
   #})
%% dotUp %% Sometimes faking a slur as above creates where dotted note
  %behaviour this is to fix it
dotUp = 
#(define-music-function
   (parser location note)
   (ly:music?)
   #{
   \tweak Dots #'extra-offset #'(0.0 . 1.0)
   #note
   #})
invTNH = 
#(define-music-function
   (parser location note)
   (ly:music?)
   #{
   \tweak TabNoteHead #'transparent ##t
   #note
   #})
% Changing the TabNoteHead stencil
  % Because it is important to know how one can change the TabNoteHead easily 
#(define (new-stil markup)
   ;; Creates a stencil
   (lambda (grob)
     (grob-interpret-markup grob markup)))
%% tweakTabNoteHead
tweakTabNoteHead = 
#(define-music-function (parser location mrkp mus)(markup? ly:music?)
                        #{
                        \tweak #'stencil #(new-stil mrkp)
                        #mus
                        #})

%% newTabNoteHead to be used with one of the below functions to change the
  %TabNoteHead Stencil
newTabNoteHead =
#(define-music-function (parser location mrkp)(markup?)
                        ;; Uses @code{new-stil} in a music-function.
                        ;; Ofcourse it's possible to use:
                        ;; @samp{\\once \\override TabNoteHead #'stencil =
                        ;;         #(new-stil #{ \\markup { \musicglyph #"noteheads.s0la" } #})}
                        ;; directly.
                        #{
                        \once \override TabNoteHead #'stencil = #(new-stil mrkp)
                        #})


%% TabNoteHead Stencils
tick = \newTabNoteHead \markup { \musicglyph #"noteheads.s0laThin" }
tickInChord = \markup { \musicglyph #"noteheads.s0laThin" }
mutedString = \markup { \musicglyph #"noteheads.s2cross" }
stringSnare = \newTabNoteHead \markup { \override #'(box-padding . 0)
\raise #0.5
\box {
  \draw-line #'(1 . 0.25)
}
}
% Markup extra-offset Tweaks and overrides
mkTweak =
#(define-event-function (parser location x y m) (number? number? ly:music?)
  #{  \tweak #'extra-offset #(cons x y) #m #})

mkMove = #(define-music-function
        (parser location x y)
        ( number? number? )
        #{ \once \override TextScript #'extra-offset = #(cons x y)
        #})
tsMove = #(define-music-function
        (parser location x y)
        ( number? number? )
        #{ \once \override TextSpanner #'extra-offset = #(cons x y)
        #})
trMove = #(define-music-function
        (parser location x y)
        ( number? number? )
        #{ \once \override TrillSpanner #'extra-offset = #(cons x y)
        #})
bsMove = #(define-music-function
        (parser location x y)
        ( number? number? )
        #{ \once \override BreathingSign #'extra-offset = #(cons x y)
        #})
