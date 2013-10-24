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
  title = \markup { \sans \bold \fontsize #3 "William Powell" }
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
            \char ##x00a9 " 1989 Round Wound Sound, Inc.  (ASCAP)/Administered by Bug Music, Inc.  All rights reserved.  Used by permission."
          } 
        } 
      } 
      \line {
        \raise #1
        \concat { 
          \fontsize #-3 { 
            \hspace #35 Transcription " " \char ##x00a9 " 2009 Stropes Editions, Ltd." 
             \hspace #20 \normal-size-sub { "William Powell 7/15/09 1/16" }
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
      \concat { \sans \fontsize #-3 { "William Powell 7/15/09 " \fromproperty #'page:page-number-string /16
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
    #'((basic-distance . 17)
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
    \tempo 2 = 96
    \override Score.RehearsalMark #'break-align-symbols = #'(key-signature)
    \once \override Score.KeySignature #'break-align-anchor = #2.3
    \once \override Score.RehearsalMark #'extra-offset = #'(0 . 2)
    \mark \markup  { \fontsize #-4 \concat {
      \fontsize #0 { \note #"2" #1 }" =" \fontsize #-4 \number " 96"
    }}
    \key e \major
    \voiceOne
    % Bar 1
    b4.\rest < e gis cis'>8\staccato b8\rest < e gis cis'>4~ cis'8~ |
    % Bar 2
    cis'4. < dis a cis'>8\staccato b8\rest < dis a cis'>4~ cis'8~ |
    % Bar 3
    cis'4. < e gis cis'>8\staccato b8\rest < e gis cis'>4~ cis'8~ |
    % Bar 4
    cis'4. < dis a cis'>8 b2\rest |
    % Bar 5
    b4.\rest < e gis cis'>8\staccato b8\rest < e gis cis'>4~ cis'8~ |
    % Bar 6
    cis'4. < dis a cis'>8\staccato b8\rest < dis a cis'>4~ cis'8~ |
    % Bar 7
    cis'4. < e gis cis'>8\staccato b8\rest < e gis cis'>4~ cis'8~ |
    % Bar 8
    cis'4. < dis a cis'>8 b4\rest b8 b8\rest |
    % Bar 9
    fis'8 gis'4 < a cis' gis'>8\staccato fis'8\rest < a cis' gis'>8~
    gis'4 |



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
    \key e \major
    \voiceTwo
    % Bar 1
    e,4 b,4 \xNote b,8 r8 b,8 d8 |
    % Bar 2
    fis,8 dis b,4 \xNote fis,8 r8 b,8 d8 |
    % Bar 3
    e,8 e b,4 e,8 r8 b,8 d8 |
    % Bar 4
    fis,8 dis b,4 e,2\rest |
    % Bar 5
    e,4 b,4 \xNote b,8 r8 b,8 d8 |
    % Bar 6
    fis,8 dis b,4 \xNote fis,8 r8 b,8 d8 |
    % Bar 7
    e,8 e b,4 e,8 r8 b,8 d8 |
    % Bar 8
    fis,8 dis b,4 r2 |
    % Bar 9
    r4 e,4 \xNote b,8 r8 a,8 g |


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
    \override TabStaff.TimeSignature #'X-offset = #-1
    \override TabStaff.TabNoteHead #'font-name = #"Helvetica"
    \override Staff.Stem #'stemlet-length = #2.75
    \override BreathingSign #'extra-offset = #'(0.5 . -2.0)
    \override TupletBracket #'thickness = #'1
    \override TupletNumber #'text = \markup { \sans "3" }
    \override TupletNumber #'font-shape = #'upright
    \override TupletNumber #'font-size = #'-1
    \override TupletBracket #'edge-height = #'(0.5 . 0.5)
    \override TupletBracket #'extra-offset = #'(0 . -0.1)
    \override Score.BarNumber #'extra-offset = #'(1.5 . -9.5)
    \override Score.BarNumber #'font-family = #'serif
    \override Score.BarNumber #'font-size = #'-6
    \set Timing.baseMoment = #(ly:make-moment 1 4)
    \set Timing.beatStructure = #'(1 1 1 1)
    \set Timing.beamExceptions = #'()
    \override TabStaff.ParenthesesItem #'font-size = #'0
    \override TabNoteHead #'whiteout = ##t
    % Bar 1
    < e, \parenthesize b, \parenthesize e \parenthesize gis
    \parenthesize cis'>4\mkTweak #0 #2 \markup {  b,8 < e gis cis'>8\staccato \leoTickTwo b,8 < e gis
    cis'>8 b, d |
    % Bar 2
    < fis, \parenthesize b, \parenthesize dis \parenthesize a
    \parenthesize cis'>8 dis b, < dis a cis'>\staccato \leoTickTwo fis, < dis a
    cis'> b, d |
    % Bar 3
    < e, \parenthesize b, \parenthesize e \parenthesize gis>8 e b, < e
    gis cis'>\staccato e, < e gis cis'> b, d |
    \break
    % Bar 4
    < fis, \parenthesize b, \parenthesize dis \parenthesize a
    \parenthesize cis'>8 dis b, < dis a cis'>8 r2 |
    % Bar 5
    e,4 b,8 < e gis cis'>\staccato \leoTickTwo b, < e gis cis'> b, d |
    % Bar 6
    fis,8 dis b, < dis a cis'>\staccato \leoTickTwo fis, < dis a cis'> b, d |
    \break
    % Bar 7
    e,8 e b, < e gis cis'>\staccato e, < e gis cis'> b, d |
    % Bar 8
    fis,8 dis b, < dis a cis'> r4 b8 r8 |
    % Bar 9
    fis'8 \glissando gis' e, < a cis' gis'>\staccato \leoTickTwo b, < a cis'
    gis'>~ < gis' a,> g |
    \pageBreak
    % Bar 10
    < fis, \parenthesize b, \parenthesize dis \parenthesize a>8


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
          \override StaffSymbol #'staff-space = #(magstep -1)
          fontSize = #-1
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
      \TabStaff
      \override Clef #'stencil = #clef::print-modern-custom-tab-if-set
    }
      }
      \midi {}


    }
  }
