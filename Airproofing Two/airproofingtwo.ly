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
  title = \markup { \sans \bold \fontsize #3 "Airproofing Two" }
  composer = \markup { \sans \fontsize #-1 "Leo Kottke" }
  poet = \markup { \concat { \sans \fontsize #-2 { E\fontsize #-5 {2}" "A\fontsize
  #-5 {2}" "D\fontsize #-5 {3}" "G\fontsize #-5 {3}" "B\fontsize #-5 {3}" "E\fontsize #-5
  {4} }}}
  meter = \markup { " " }
  copyright = \markup { 
    \sans 
    \center-column { 
      \line { 
        \concat { 
          \fontsize #-3 { 
            \char ##x00a9 "1976 Round Wound Sound Music, Inc."
            " (BMI)/Administered by Bug Music, Inc.  All rights reserved.  Used"
            " by permission."
          } 
        } 
      } 
      \line {
        \raise #1
        \concat { 
          \fontsize #-3 { 
            \hspace #35 Transcription " " \char ##x00a9 " 1997 Stropes Editions,"
            " Ltd." 
             \hspace #20 \normal-size-sub { "Airproofing 7/6/97 1/26" }
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
      \concat { \sans \fontsize #-3 { "Airproofing Two 7/6/97 " \fromproperty #'page:page-number-string /12
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
    #'((basic-distance . 15)
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
    \tempo 2 = 112
    \override Score.RehearsalMark #'break-align-symbols = #'(time-signature)
    \once \override Score.TimeSignature #'break-align-anchor = #2.3
    \once \override Score.RehearsalMark #'extra-offset = #'(0 . 2)
    \mark \markup  { \fontsize #-4 \concat {
      \fontsize #0 { \note #"2" #1 }" =" \fontsize #-4 \number " 112"
    }}
    \key a \major
    \voiceOne
      \set Timing.baseMoment = #(ly:make-moment 1 4)
      \set Timing.beatStructure = #'(1 1 1 1)
      \set Timing.beamExceptions = #'()
    \partial 8
    e8
    % Bar 1
    g4 \parenthesize a8 r8 g8 < e \parenthesize a>4 g8~ |
    % Bar 2
    g8 e \parenthesize a e g < e \parenthesize a>4 g8~ |
    % Bar 3
    g8 e \parenthesize a e g < e \parenthesize a>4 g8~ |
    % Bar 4
    g8 e \parenthesize a e g < e \parenthesize a>4 g8~ |
    % Bar 5
    g8 e \parenthesize a e g < e \parenthesize a>4 g8~ |
    % Bar 6
    g8 e \parenthesize a e g < e \parenthesize a>4 g8~ |
    % Bar 7
    g8 e \parenthesize a e g < e \parenthesize a>4 g8~ |
    % Bar 8
    g8 e \parenthesize a e g < e \parenthesize a>4 g8~ |
    % Bar 9
    g8 a4 d8 a8 d4 a8~ |
    % Bar 10
    a8 d4 d8 a8 d8 r8 g8~ |
    % Bar 11
    g8 e \parenthesize a e g < e \parenthesize a>4 g8~ |
    % Bar 12
    g8


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
    \key a \major
    \voiceTwo
      \set Timing.baseMoment = #(ly:make-moment 1 4)
      \set Timing.beatStructure = #'(1 1 1 1)
      \set Timing.beamExceptions = #'()
    \partial 8
    s8
    % Bar 1
    a,4 fis,8 r8 e,8 r8 fis,8 r8 |
    % Bar 2
    a,4 fis,8 r8 e,8 r8 fis,8 r8 |
    % Bar 3
    a,4 fis,8 r8 e,8 r8 fis,8 r8 |
    % Bar 4
    a,4 fis,8 r8 e,8 r8 fis,8 r8 |
    % Bar 5
    a,4 fis,8 r8 e,8 r8 fis,8 r8 |
    % Bar 6
    a,4 fis,8 r8 e,8 r8 fis,8 r8 |
    % Bar 7
    a,4 fis,8 r8 e,8 r8 fis,8 r8 |
    % Bar 8
    a,4 fis,8 r8 e,8 r8 fis,8 r8 |
    % Bar 9
    a,4 fis,8 r8 e,8 r8 fis,8 r8 |
    % Bar 10
    a,4 fis,8 r8 e,8 r8 fis,8 r8 |
    % Bar 11
    a,4 fis,8 r8 e,8 r8 fis,8 r8 |


  }
% Tab
  tab = {
    \set Staff.midiInstrument = #"vibraphone"
    \key g \major
    \numericTimeSignature
    \time 4/4
    \override Beam #'damping = #3
    \override TabNoteHead #'whiteout = ##t
    \tabFullNotation
    \stemDown
    \override Rest #'font-size = #2 
    \override TabStaff.TimeSignature #'X-offset = #-1
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
    \override Score.BarNumber #'extra-offset = #'(1.5 . -9.8)
    \override Score.BarNumber #'font-family = #'sans
    \override Score.BarNumber #'font-size = #'-6
    \set Timing.baseMoment = #(ly:make-moment 1 4)
    \set Timing.beatStructure = #'(1 1 1 1)
    \set Timing.beamExceptions = #'()
      \partial 8
      \override TabStaff.Slur #'thickness = #'0.08
      < e \parenthesize cis'>8 
      % Bar 1
      \once\override TabStaff.Slur #'control-points = 
      #'((1.2 . 1.2) (3.2 . 2.2) (6.2 . 2.2) (8 . 1.2))
      \slurDashed < g a,>4( 
      < fis, \parenthesize a\3>8)
      r8
      \once\override TabStaff.Slur #'control-points = 
      #'((1.2 . 1.3) (2.3 . 1.8) (3.3 . 1.8) (4.3 . 1.3))
      < e, g>(
      < \parenthesize fis, e \parenthesize a >)
      fis,
      \once\override TabStaff.Slur #'control-points = 
      #'((1.2 . 1.2) (6.2 . 2.2) (11 . 2.2) (16 . 1.2))
      \slurDashed g(
      |
      % Bar 2
      a,
      e
      < fis, \parenthesize a>)
      e
      \once\override TabStaff.Slur #'control-points = 
      #'((1.2 . 1.3) (2.3 . 1.8) (3.3 . 1.8) (4.3 . 1.3))
      < e, g>(
      < \parenthesize fis, e \parenthesize a>)
      fis,
      \once\override TabStaff.Slur #'control-points = 
      #'((1.2 . 1.2) (6.2 . 2.2) (11 . 2.2) (16 . 1.2))
      g(
      |
      \break
      % Bar 3
      a,
      e
      < fis, \parenthesize a>)
      e
      < e, g>
      < \parenthesize fis, e \parenthesize a>
      fis,
      g
      |
      % Bar 4
      a,
      e
      < fis, \parenthesize a>
      e
      < e, g>
      < \parenthesize fis, e \parenthesize a>
      fis,
      g
      |
      % Bar 5
      a,
      e
      < fis, \parenthesize a>
      e
      < e, g>
      < \parenthesize fis, e \parenthesize a>
      fis,
      g
      |
      \break
      % Bar 6
      a,
      e
      < fis, \parenthesize a>
      e
      < e, g>
      < \parenthesize fis, e \parenthesize a>
      fis,
      g
      |
      % Bar 7
      a,
      e
      < fis, \parenthesize a>
      e
      < e, g>
      < \parenthesize fis, e \parenthesize a>
      fis,
      g
      |
      % Bar 8
      a,
      e
      < fis, \parenthesize a>
      e
      < e, g>
      < \parenthesize fis, e \parenthesize a>
      fis,
      g
      |
      \break
      % Bar 9
      a,8
      a
      fis,
      d
      < e, a>
      < \parenthesize fis, d>
      fis,
      a
      |
      % Bar 10
      a,
      d
      fis,
      d
      < e, a>
      < \parenthesize fis, d>
      < fis, \parenthesize e \parenthesize cis' >
      g
      |
      % Bar 11
      a,
      e
      < fis, \parenthesize a>
      e
      < e, g>
      < \parenthesize fis, e \parenthesize a>
      fis,
      g 
      |
      \pageBreak



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
            \context Voice = "lower" \lower
          >>
        >>
        \new TabStaff = "guitar tab" 
        <<
          \clef "moderntabII"
          \set Staff.stringTunings = \stringTuning <e, a, d g b e'>
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
        \context {
      \TabStaff
      \override Clef #'stencil = #clef::print-modern-custom-tab-if-set
    }
      }
      \midi {}


    }
  }
