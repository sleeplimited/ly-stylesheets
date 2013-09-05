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
  title = \markup { \sans \bold \fontsize #3 "Aerial Boundaries" }
  composer = \markup { \sans \fontsize #-1 "Michael Hedges" }
  poet = \markup { \concat { \sans \fontsize #-2 { C\fontsize #-5 {2}" "C\fontsize
  #-5 {C}" "D\fontsize #-5 {3}" "G\fontsize #-5 {3}" "A\fontsize #-5 {3}" "D\fontsize #-5
  {4} }}}
  meter = \markup { " " }
  copyright = \markup { 
    \sans 
    \center-column { 
      \line { 
        \concat { 
          \fontsize #-3 { 
            \char ##x00a9 "1984 Naked Ear Music (BMI) and Imaginary Road Music"
            " (BMI)/Administered by Windham Hill Music (BMI)." 
          } 
        } 
      } 
      \line {
        \raise #1
        \concat { 
          \fontsize #-3 { 
            \hspace #35 Transcription " " \char ##x00a9 " 1995 Stropes Editions,"
            " Ltd." 
             \hspace #20 \normal-size-sub { "Aerial Boundaries 09/04/13 1/12" }
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
    \override Staff.Stem #'stemlet-length = #0.75
    \numericTimeSignature
    \time 4/4
    \set Score.tempoHideNote = ##t
    \tempo 4 = 88
    \override Score.RehearsalMark #'break-align-symbols = #'(time-signature)
    \once \override Score.RehearsalMark #'extra-offset = #'(2 . 2)
    \mark \markup  { \fontsize #-4 \concat {
      \fontsize #0 { \note #"4" #1 }" =" \fontsize #-4 \number " 88"
    }}
    \key c \major
    % Bar 1
    < a e'>16[ r16 < a e'>16 r16]
    \xNote < a e' >[ r16 < a e'> r16]
    < a e'>[ r16 \xNote < a e'> r16] 
    \xNote < a e'>[ r16 \xNote < a e'> r16] | 
    % Bar 2
    < a e'>16[ r16 < a e'>16 r16]
    \xNote < a e' >[ r16 < a e'> r16]
    < a e'>[ r16 \xNote < a e'> r16] 
    \xNote < a e'>[ r16 \xNote < a e'> < g d'>] | 
    % Bar 3
    < a e'>16[ r16 < a e'>16 r16]
    \xNote < a e' >[ \xNote < g d'> < a e'> r16]
    < a e'>[ r16 \xNote < a e'> \xNote < g d'>] 
    \xNote < a e'>[ \xNote < g d'> \xNote < a e'> < g d'>] | 
    % Bar 4
    < a e'>16[ r16 < a e'>16 r16]
    \xNote < a e' >[ \xNote < g d'> < a e'> r16]
    < a e'>[ r16 \xNote < a e'> \xNote < g d'>] 
    \xNote < a e'>[ \xNote < g d'> \xNote < a e'> < g d'>] | 
    % Bar 5
    < a e'>16[ r16 < a e'>16 r16]
    \xNote < a e' >[ \xNote < g d'> < a e'> r16]
    < a e'>[ r16 \xNote < a e'> \xNote < g d'>] 
    \xNote < a e'>[ \xNote < g d'> \xNote < a e'> < g d'>] | 
    % Bar 6
    < a e'>16[ r16 < a e'>16 r16]
    \xNote < a e' >[ \xNote < g d'> < a e'> r16]
    < a e'>[ r16 \xNote < a e'> \xNote < g d'>] 
    \xNote < a e'>[ \xNote < g d'> \xNote < a e'> < g d'>] | 
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
    s1 s1 s1 s1 
    % Bar 5
    \clef "treble_8"
    c16 d8.~ d2.~ |
    % Bar 6
    d1 |

  }
% Tab
%% Tab I
  tab = {
    \set Staff.midiInstrument = #"vibraphone"
    \numericTimeSignature
    \time 4/4
    \override Beam #'damping = #100000
    \override TabNoteHead #'whiteout = ##t
    \tabFullNotation
    \stemDown
    \override Rest #'font-size = #2 
    \override TabStaff.TimeSignature #'font-size = #5
    \once\override Staff.TimeSignature #'X-offset = #'-1
    \override TabStaff.TabNoteHead #'font-name = #"Helvetica"
    \override Staff.Stem #'stemlet-length = #2.75
    \override BreathingSign #'extra-offset = #'(0.5 . -2.0)
    \override TupletBracket #'thickness = #'1
    \override TupletNumber #'text = \markup { \sans "3" }
    \override TupletNumber #'font-shape = #'upright
    \override TupletNumber #'font-size = #'-1
    \override TupletBracket #'edge-height = #'(0.5 . 0.5)
    \override TupletBracket #'extra-offset = #'(0 . -0.1)
    \override Score.BarNumber #'extra-offset = #'(1.5 . -17.8)
    \override Score.BarNumber #'font-family = #'sans
    \override Score.BarNumber #'font-size = #'-6
    % Bar 1
    \override Staff.Rest #'extra-offset =#'(0 . -1)
    < a\3 e'>16^\repeatTie[ r16 < a\3 e'>^\repeatTie r16] < a\3 e'>16^\repeatTie[ r16
    < a\3 e'>^\repeatTie r16] < a\3 e'>16^\repeatTie[ r16 < a\3 e'>^\repeatTie r16] <
    a\3 e'>16^\repeatTie[ r16 < a\3 e'>^\repeatTie r16] |
    % Bar 2
    < a\3 e'>16^\repeatTie[ r16 < a\3 e'>^\repeatTie r16] < a\3 e'>16^\repeatTie[ r16
    < a\3 e'>^\repeatTie r16] < a\3 e'>16^\repeatTie[ r16 < a\3 e'>^\repeatTie r16] <
    a\3 e'>16^\repeatTie[ r16 < a\3 e'>^\repeatTie < g d'>] |
    % Bar 3
    \override Score.BarNumber #'extra-offset = #'(1.5 . -10.8)
    < a\3 e'>16^\repeatTie[ r16 < a\3 e'>^\repeatTie r16] 
    < a\3 e'>16^\repeatTie[ < g d'> < a\3 e'>^\repeatTie r16]
    < a\3 e'>16^\repeatTie[ r16 < a\3 e'>^\repeatTie < g d'>]
    < a\3 e'>16^\repeatTie[ < g d'> < a\3 e'>^\repeatTie < g d'>] |
    % Bar 4
    < a\3 e'>16^\repeatTie[ r16 < a\3 e'>^\repeatTie r16] 
    < a\3 e'>16^\repeatTie[ < g d'> < a\3 e'>^\repeatTie r16]
    < a\3 e'>16^\repeatTie[ r16 < a\3 e'>^\repeatTie < g d'>]
    < a\3 e'>16^\repeatTie[ < g d'> < a\3 e'>^\repeatTie < g d'>] |
    % Bar 5
    < a\3 e'>16^\repeatTie[ r16 < a\3 e'>^\repeatTie r16] 
    < a\3 e'>16^\repeatTie[ < g d'> < a\3 e'>^\repeatTie r16]
    < a\3 e'>16^\repeatTie[ r16 < a\3 e'>^\repeatTie < g d'>]
    < a\3 e'>16^\repeatTie[ < g d'> < a\3 e'>^\repeatTie < g d'>] |
    % Bar 6
    < a\3 e'>16^\repeatTie[ r16 < a\3 e'>^\repeatTie r16] 
    < a\3 e'>16^\repeatTie[ < g d'> < a\3 e'>^\repeatTie r16]
    < a\3 e'>16^\repeatTie[ r16 < a\3 e'>^\repeatTie < g d'>]
    < a\3 e'>16^\repeatTie[ < g d'> < a\3 e'>^\repeatTie < g d'>] |
    \pageBreak
    s1


  }
%% Tab II
  tabII = {
    s1 s1 s1 s1
    \set Staff.midiInstrument = #"vibraphone"
    \override Beam #'damping = #100000
    \override TabNoteHead #'whiteout = ##t
    \tabFullNotation
    \stemDown
    \override Rest #'font-size = #2 
    \override TabStaff.TimeSignature #'font-size = #5
    \once\override Staff.TimeSignature #'X-offset = #'-1
    \override TabStaff.TabNoteHead #'font-name = #"Helvetica"
    \override Staff.Stem #'stemlet-length = #2.75
    \override BreathingSign #'extra-offset = #'(0.5 . -2.0)
    \override TupletBracket #'thickness = #'1
    \override TupletNumber #'text = \markup { \sans "3" }
    \override TupletNumber #'font-shape = #'upright
    \override TupletNumber #'font-size = #'-1
    \override TupletBracket #'edge-height = #'(0.5 . 0.5)
    \override TupletBracket #'extra-offset = #'(0 . -0.1)
    \override Score.BarNumber #'extra-offset = #'(1.5 . -17.8)
    \override Score.BarNumber #'font-family = #'sans
    \override Score.BarNumber #'font-size = #'-6
    % Bar 1
    \override Staff.Rest #'extra-offset =#'(0 . -1)

          \clef "moderntabII"
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
        
        <<
        \new GrandStaff = "tab" \with {
          systemStartDelimiter = #'SystemStartBar
          \override SystemStartBar #'thickness = #5
          \override SystemStartBar #'X-offset = #-1
        } <<
        \new TabStaff = "guitar tab" 
          <<
          \clef "moderntabII"
          \set Staff.stringTunings = \stringTuning <c, c d g a d'>
          \new TabVoice = "dynamicsone" \dynamicsone
          \new TabVoice = "dynamicstwo" \dynamicstwo
          \new TabVoice = "dynamicsthree" \dynamicsthree
          \new TabVoice = "tab" \tab
          \new TabVoice = "dynamicsfour" \dynamicsfour 
          \new TabVoice = "dynamicsfive" \dynamicsfive  
          \new TabVoice = "dynamicssix" \dynamicssix
          \new TabVoice = "sixstr" \sixstr
        >>
        \new TabStaff = "guitar tab II"
        <<
          \set Staff.stringTunings = \stringTuning <c, c d g a d'>
          \new TabVoice = "tabII" \tabII
        >>
      >>
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
        \context {
      \TabStaff
      \override Clef #'stencil = #clef::print-modern-custom-tab-if-set
    }
      }
      \midi {}


    }
  }
