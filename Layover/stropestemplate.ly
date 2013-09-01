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
  title = \markup { \sans \bold \fontsize #1 "Hot Type" }
  composer = \markup { \sans \fontsize #-2 "Michael Hedges" }
  poet = \markup { \concat { \sans \fontsize #-2 { A\fontsize #-5 {1}" "B\fontsize
  #-5 {2}" "E\fontsize #-5 {3}" "F\raise #0.6 \fontsize #-5 \sharp\fontsize #-5 {3}" "A\fontsize #-5 {3}" "D\fontsize #-5
  {4} }}}
  meter = \markup {
    \concat {
      \fontsize #-2 { \note #"4" #1 } " = " \italic "88"
    }
  }
  copyright = \markup { 
    \sans 
    \center-column { 
      \line { 
        \concat { 
          \fontsize #-3 { 
            \char ##x00a9 "1984 Naked Ear Music (BMI) and Imaginary Road Music"
            " (BMI)/Administered by Imaginary Road Music (BMI)." 
          } 
        } 
      } 
      \line {
        \raise #1
        \concat { 
          \fontsize #-3 { 
            \hspace #35 Transcription " " \char ##x00a9 " 1995 Stropes Editions,"
            " Ltd." 
             \hspace #20 \normal-size-sub { "Hot Type 5/10/96 1/12" }
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
    \tempo 4 = 88
    \key g \major

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
    \key g \major

  }
% Tab
  tab = {
    \set Staff.midiInstrument = #"vibraphone"
    \key g \major
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
          \set Staff.stringTunings = \stringTuning <a,, b, e fis b e'>
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
       % \context {
       %  \Staff
       %  \override TimeSignature #'space-alist #'first-note = #'(extra-space .
       %  4.9) }
     %}
      \midi {}


    }
  }
