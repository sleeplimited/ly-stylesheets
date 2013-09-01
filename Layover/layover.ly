\version "2.16.2"
% Test To attempt Stropes Duplications
%{ Declaration
=============================================================================
"Lion's Lament", by Kevin Horrigan

Pro Bono Transcription
The copyright of this transcription is not held by the transcriber.
Kevin Horrigan has not given permission for this transcription to be
sold by the transcriber.  Part of the agreement of this transcription is that 
Kevin Horrigan owns all parts of the transcription.  This means that 
permission needs to be obtained before any usage of this transcription.

This transcription is derived from Mark Grover's GuitarPro tab transcription
which was commissioned by Kevin Horrigan.  Use of Grover's transcription
was approved by Kevin Horrigan.

This transcription is by Rachael Thomas Carlson for Sleep Limited 
Publications.  07/10/13
__..           .           ,      .
(__ | _  _ ._   |   *._ _ *-+- _  _|
.__)|(/,(/,[_)  |___|[ | )| | (/,(_]
|                        
.__    .  .        ,                
[__). .|_ |* _. _.-+-* _ ._  __     
|   (_|[_)||(_.(_] | |(_)[ )_)      

============================================================================%} 
\pointAndClickOff
% header
\header {
  title = \markup { \sans \bold \fontsize #1 "Layover" }
  composer = \markup { \sans \fontsize #-2 "Michael Hedges" }
  poet = \markup { \concat { \sans \fontsize #-2 { D\fontsize #-5 {2}" "A\fontsize
  #-5 {2}" "C\fontsize #-5 {3}" "G\fontsize #-5 {3}" "C\fontsize #-5 {4}" "E\fontsize #-5
  {4} }}}
  meter = \markup {
      \fontsize #-2 \sans \italic "Very freely"
  }
  copyright = \markup { 
    \sans 
    \center-column { 
      \line { 
        \concat { 
          \fontsize #-3 { 
            \char ##x00a9 " 1981 Naked Ear Music (BMI) /Administered by Windham "
            "Hill Music (BMI) for Imaginary Road Music (BMI)."
          } 
        } 
      } 
      \line {
        \raise #1
        \concat { 
          \fontsize #-3 { 
            \hspace #37 Transcription " " \char ##x00a9 " 1995 Stropes Editions,"
            " Ltd." 
             \hspace #35 \normal-size-sub { \roman "63" }
          }
        }
      } 
    } 
  } 
  tagline = " "

}
% paper
\paper { 
  #(set-paper-size "letter")
  left-margin = 0.6\in
  right-margin = 0.6\in
  top-margin = 0.5\in
  bottom-margin = 0.5\in
  max-systems-per-page = 3
  myStaffSize = #20
  #(define fonts
  (make-pango-font-tree "Times New Roman"
                        "Helvetica"
                        "typewriter"
                        (/ myStaffSize 20)))
  % see:  http://code.google.com/p/lilypond/issues/detail?id=2576

  #(define (not-last-page layout props arg) 
  (if (not (book-last-page? layout props)) 
    (interpret-markup layout props arg) 
    empty-stencil)) 

  tocItemMarkup = \tocItemWithDotsMarkup 

  oddHeaderMarkup = ""

  evenHeaderMarkup = \oddHeaderMarkup 

  oddFooterMarkup = 
  \markup \fill-line { 
    % using \line removes empty-stencils 
    % produced by #not-first-page etc 
    \line { " " }
    \line {  
      % page-number not on first-page 
      \on-the-fly #not-first-page 
      % page-number not on last-page 
      \concat { \sans \fontsize #-3 { "Hot Type 5/10/96 " \fromproperty #'page:page-number-string /12
    }  }
    % copyright on first page 
    \on-the-fly #first-page \fromproperty #'header:copyright 
    % tagline on last page 
    \on-the-fly #last-page \fromproperty #'header:tagline 
  } 
} 
evenFooterMarkup = \oddFooterMarkup 

} 
\layout {
  \context {
    \Score
    \override StaffGrouper #'staffgroup-staff-spacing =
    #'((basic-distance . 12)
    (padding . -10)
    (stretchability . 0))
    }
  }

% Includes and functions
  \include "stropes-functions.ly"
  \include "vibrato.ly"
% Standard Notation
%% Upper
  upper = {
    \set Staff.midiInstrument = #"vibraphone"
    \override TupletNumber #'text = \markup { \sans "3" }
    \override TupletNumber #'font-shape = #'upright
    \override TupletNumber #'font-size = #'-1
    \override TupletBracket #'thickness = #'1
    \override TupletBracket #'bracket-visibility = ##t
    \numericTimeSignature
    \time 4/4
    \set Score.tempoHideNote = ##t
    \tempo 4 = 80
    \override Score.RehearsalMark #'break-align-symbols = #'(key-signature)
    \once \override Score.KeySignature #'break-align-anchor = #3.5
    \once \override Score.RehearsalMark #'extra-offset = #'(0 . 2)
    \mark \markup  { \fontsize #-4 \concat {
      \fontsize #0 { \note #"4" #1 }"  " \char ##x2248 \bold \italic "  80"
    }}
    \key c \major
    % Bar 1
      \override Voice.NoteHead #'style = #'harmonic-mixed
      d'2
      e'2\fermata
      d'4
      e'4
      g'2\fermata
      d'4
      e'4
      g'
      a'
      c''
      d'' 
      e'' 
      g'' 
      b''2\fermata
      \revert Voice.NoteHead #'style
      \override Score.MetronomeMark #'padding = #3
      \set Score.tempoHideNote = ##f
      \tempo 4 = 176
      << { \stemDown c''4~
      % Bar 2
      \stemUp c''8 r4. d''8 e'' r4 |
      % Bar 3
      b'8 a'4 g'8~ g' e' c'4 |
      % Bar 4
      r4 d'4~ d'8 c' d'[ e']~ |
      % Bar 5
      e'8 d'4 c'8~ c' d' e' c''~ |
      % Bar 6
      c''4 r4 d''8 e'' r4 |
      % Bar 7
      b'8 a'4 g'8~ g' e'4 c'8 |

    } \\ {
      s4
      % Bar 2
      r8 \tieUp g8~ \tieUp < g a>8[~ < a g c'>] r4 b4 |
      % Bar 3
      \stemDown \slashedGrace { g8~ } g4 g2 g4 |
      % Bar 4
      r4 \tieDown a4~ a8 r8 f4 |
      % Bar 5
      r4 \once\override Voice.NoteHead #'style = #'harmonic-mixed g'4 r2 |
      % Bar 6
      r8 \tieUp g8~ \tieUp < g a>8[~ < a g c'>] r4 b4 |
      % Bar 7
      \stemDown \slashedGrace { g8~ } g4 g2 g4 |


    } >>

  }
%% Lower
  lower = {
    \set Staff.midiInstrument = #"vibraphone"
    \numericTimeSignature
    \override TupletNumber #'text = \markup { \sans "3" }
    \override TupletNumber #'font-shape = #'upright
    \override TupletNumber #'font-size = #'-1
    \override TupletBracket #'thickness = #'1
    \override TupletBracket #'bracket-visibility = ##t
    \key c \major
    s2 s2 s2 s2 s2 s2 s2 s2 
    \once\override Script #'direction = #-1 f,2\fermata 
    s4
    % Bar 2
    a,2 a, |
    % Bar 3
    a, a, |
    % Bar 4
    d,2 d16 r4.. |
    % Bar 5
    d,2 d,4 r4 |
    % Bar 6
    a,2 a, |
    % Bar 7
    a, a, |
    \pageBreak
    s1
     


  }
% Tab
  tab = {
    \override TextSpanner #'staff-padding = #'0
    \set Staff.midiInstrument = #"vibraphone"
    \numericTimeSignature
    \time 4/4
    \override Beam #'damping = #100000
    \override TabNoteHead #'whiteout = ##t
    \tabFullNotation
    \stemDown
    \override Rest #'font-size = #2 
    \override TabStaff.TimeSignature #'font-size = #5
    \override TabStaff.TabNoteHead #'font-name = #"Helvetica"
    \override Staff.Stem #'stemlet-length = #2.75
    \override BreathingSign #'extra-offset = #'(0.5 . -2.0)
    \override TupletBracket #'thickness = #'1
    \override TupletNumber #'text = \markup { \sans "3" }
    \override TupletNumber #'font-shape = #'upright
    \override TupletNumber #'font-size = #'-1
    \override TupletBracket #'edge-height = #'(0.5 . 0.5)
    \override TupletBracket #'extra-offset = #'(0 . -0.1)
    % bar 1
      \override Score.TimeSignature #'stencil = ##f
      \cadenzaOn

        \harmonicByRatio #1/4 d'4\6-\rhp -\lhone ^\rhi ^\rhm ^\rha ~ 
        \harmonicByRatio #1/4 d'\6
        \harmonicByRatio #1/3 e'\5-\rhp -\lhthree ~
        \override Script #'padding = #1
        \harmonicByRatio #1/3 e'\5\fermata
        \harmonicByRatio #1/4 d'\6-\rhp -\lhone
        \harmonicByRatio #1/3 e'\5-\rhp -\lhthree
        \harmonicByRatio #1/3 g'\4-\rhp -\lhthree ~
        \harmonicByRatio #1/3 g'\4\fermata
        \harmonicByRatio #1/4 d'\6-\lhone 
        \harmonicByRatio #1/3 e'\5-\lhthree
        \harmonicByRatio #1/3 g'\4-\lhthree
        \harmonicByRatio #1/4 a'\5-\lhthree
        \harmonicByRatio #1/4 c'\4-\lhthree
        \harmonicByRatio #1/3 d''\3-\lhthree
        \harmonicByRatio #1/2 e''\1-\lhfour
        \harmonicByRatio #1/3 g''\2-\lhfour
        \tieUp < f,\6 b'\harmonic >-\lhone -\lhfour~
        < f,\6 b'\harmonic >\fermata
        \bar "||"
        \break
      \revert Score.TimeSignature #'stencil
      \time 4/4
      c''4 
      \cadenzaOff
      \bar "|"
      % Bar 2
      \set Timing.baseMoment = #(ly:make-moment 1 4)
      \set Timing.beatStructure = #'(1 1 1 1)
      \set Timing.beamExceptions = #'()
      \set Score.currentBarNumber = #2
      a,8 g a\4 c' < d'' a, > \glissando e'' b4\4 \glissando |
      % Bar 3
      \stemDown \slashedGrace { g8\4 } < a, b' >8 a' g\4 g'\2 a, e' < g\4
      c'\3>4 |
      % Bar 4
      d,4 < a\4 d'\3> \revert Script #'padding d,8\staccato c' < f\5 d'\3 > e' |
      \break
      % Bar 5
      d,8 d'\3 \harmonicByRatio #1/3 g\4 c' d, d'\3 e' c'' |
      % Bar 6
      a,8 g a\4 c' < d'' a,> \glissando e'' b4\4 \glissando |
      % Bar 7
      \stemDown \slashedGrace { g8\4 } < a, b' >8 a' g\4 g'\2 a, e' g\4
      c'\3 |



  }
% Dynamics
%% DynamicsOne

  dynamicsone = {
    \textLengthOff
    \override TextScript #'outside-staff-priority = ##f
    \tabFullNotation
  }
%% DynamicsTwo
  dynamicstwo = {
    \textLengthOff
    \override TextScript #'outside-staff-priority = ##f
    \tabFullNotation
  }

%% DynamicsThree
  dynamicsthree = {
    \textLengthOff
    \override TextScript #'outside-staff-priority = ##f
    \tabFullNotation
  }

%% DynamicsFour
  dynamicsfour = {
    \textLengthOff
    \override TextScript #'outside-staff-priority = ##f
    \tabFullNotation
  }
%% DynamicsFive
  dynamicsfive = {
    \textLengthOff
    \override TextScript #'outside-staff-priority = ##f
    \tabFullNotation
  }
%% DynamicsSix
  dynamicssix = {
    \textLengthOff
    \override TextScript #'outside-staff-priority = ##f
    \tabFullNotation
  }
%% SixStr
  sixstr = {
    \textLengthOff
    \override TextScript #'outside-staff-priority = ##f
    \tabFullNotation
  }
% Score
  \book {
    \score {
      <<
        \new GrandStaff = "tab with traditional" \with {
          systemStartDelimiter = #'SystemStartBar
          \override SystemStartBar #'thickness = #5
          \override SystemStartBar #'X-offset = #-1
          \override StaffSymbol #'staff-space = #(magstep -2)
          fontSize = #-2
        }  <<
          \new Staff = "guitar traditional" <<
            \clef "treble_8"
            \context Voice = "upper" \upper
          >>
          \new Staff = "guitar Traditional bass" <<
            \clef "bass_8"
            \context Voice = "lower" \lower
          >>
        >>
        \new TabStaff = "guitar tab" 
        <<
          \clef "moderntab"
          \set Staff.stringTunings = \stringTuning <d, a, c g c' e'>
          \new TabVoice = "dynamicsone" \dynamicsone
          \new TabVoice = "dynamicstwo" \dynamicstwo
          \new TabVoice = "dynamicsthree" \dynamicsthree
          \new TabVoice = "tab" \tab
          \new TabVoice = "dynamicsfour" \dynamicsfour 
          \new TabVoice = "dynamicsfive" \dynamicsfive  
          \new TabVoice = "dynamicssix" \dynamicssix
          \new TabVoice = "sixstr" \sixstr
        >>
     >>
      %% Layout
      \layout {
        indent = 0\cm
        \context { 
          \Staff \RemoveEmptyStaves
          \override VerticalAxisGroup #'remove-first = ##t
        }
        \context {
         \Staff
         \override TimeSignature #'space-alist #'first-note = #'(extra-space .
         4.9) }
     
   }
      \midi {}


    }
  }
