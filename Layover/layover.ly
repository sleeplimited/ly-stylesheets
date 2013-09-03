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
      \fontsize #0 { \note #"4" #1 }" " \char ##x2248 \fontsize #-4 \number " 80"
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
      \set Score.tempoHideNote = ##t
      \tempo 4 = 176
    \override Score.RehearsalMark #'break-align-symbols = #'(key-signature)
    \once \override Score.KeySignature #'break-align-anchor = #3.5
    \once \override Score.RehearsalMark #'extra-offset = #'(8 . 2)
    \mark \markup  { \fontsize #-4 \concat {
      \fontsize #0 { \note #"4" #1 }" =" \fontsize #-4 \number " 176"
    }}
      s4 
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
        \override TextSpanner #'outside-staff-priority = ##f
        \once\override TextSpanner #'style = #'solid 
        \once\override Voice.TextSpanner #'thickness = #'0.1
        \once\override TextSpanner #'outside-staff-priority = #'0
        \once\override TextSpanner #'staff-padding = #'0
        \once\override Voice.TextSpanner #'font-size = #'-5
        \once \override TextSpanner #'(bound-details left stencil-align-dir-y) = #CENTER
        \override TextSpanner #'after-line-breaking =
        #ly:spanner::kill-zero-spanned-time \endSpanners  
        \once\override TextSpanner #'(bound-details left text) = #"l.v. "
        \once\override TextSpanner #'(bound-details right text) = \markup {
        \draw-line #'(0 . -0.5) }

        \tsMove #-1.0 #-0.3 \strpHarmFive d'4\6-\mkTweak #-0.3 #0.6 -\rhp -\mkTweak #-0.8
        #3.88 -\lhone -\mkTweak #-0.3 #-3.4 ^\rhi -\mkTweak #-0.3 #-4.5 ^\rhm -\mkTweak #-0.3 #-4.3 ^\rha
        \startTextSpan ~ 
        \strpHarmFive d'\6
        \strpHarmSeven e'\5-\mkTweak #-0.3 #1.35 -\rhp 
        -\mkTweak #-0.6 #4.25 -\lhthree ~
        \override Script #'padding = #1
        \strpHarmSeven e'\5\fermata
        \strpHarmFive d'\6-\mkTweak #-0.3 #0.6 -\rhp 
        -\mkTweak #1.5 #3.9 -\lhone
        \strpHarmSeven e'\5-\mkTweak #-0.3 #1.35 -\rhp 
        -\mkTweak #1.5 #4.22 -\lhthree
        \strpHarmSeven g'\4-\mkTweak #-0.3 #2.35 -\rhp 
        -\mkTweak #-0.8 #4.6 -\lhthree ~
        \strpHarmSeven g'\4\fermata
        \strpHarmFive d'\6-\mkTweak #1.4 #3.9 -\lhone 
        \strpHarmSeven e'\5
        -\mkTweak #1.5 #4.2 -\lhthree
        \strpHarmSeven g'\4
        -\mkTweak #1.5 #4.6 -\lhthree
        \strpHarmFive a'\5
        -\mkTweak #1.5 #4.2 -\lhthree
        \strpHarmFive c'\4
        -\mkTweak #1.5 #4.6 -\lhthree
        \strpHarmSeven d''\3
        -\mkTweak #1.5 #4.73 -\lhthree
        \strpHarmTwelve e''\1
        -\mkTweak #1.7 #6.5 -\lhfour
        \strpHarmSeven g''\2
        -\mkTweak #0.4 #6.5 -\lhfour
        \tieUp < \tweak #'X-offset #0.4 f,\6 \tweakTabNoteHead \strpHarmSevenInChord b' >
        -\mkTweak #-0.5 #3.9 -\lhone 
        -\mkTweak #-0.5 #9 -\lhfour~
        < \tweak #'X-offset #0.4 f,\6 \tweakTabNoteHead \strpHarmSevenInChord b' >\fermata
        \bar "||"
        \break
      \revert Score.TimeSignature #'stencil
      \once\override Staff.TimeSignature #'X-offset = #'-1
      \time 4/4
      s4\stopTextSpan-\mkTweak #-0.8 #1.3 -\rhp -\mkTweak #-0.8 #-3.4 ^\rhi
      -\mkTweak #-0.8 #-3.3 ^\rhm -\mkTweak #-0.8 #-3.0 ^\rha
      c''4-\mkTweak #0.2 #-1 ^\lhone
      \cadenzaOff
      \bar "|"
      % Bar 2
      \set Timing.baseMoment = #(ly:make-moment 1 4)
      \set Timing.beatStructure = #'(1 1 1 1)
      \set Timing.beamExceptions = #'()
      \set Score.currentBarNumber = #2
      \once \override Score.RehearsalMark #'font-size = #-3
      \once \override Score.RehearsalMark #'extra-offset = #'(0.8 . -20.5)
      \mark \markup { \musicglyph #"scripts.segno" }
      a,8
      g 
      a\4-\mkTweak #-0.3 #2.9 -\rhp -\mkTweak #1 #4.9 -\lhtwo
      c' 
      < d'' a, >-\mkTweak #0.2 #-1 ^\lhfour \glissando 
      e'' 
      b4\4-\mkTweak #1.3 #3.6 -\lhthree \glissando |
      % Bar 3
      \stemDown 
      \once\override Stem #'length = #'3
      \slashedGrace { 
        g8\4 } 
      < a, b'\1 \invTNH a'\1 >8 -\mkTweak #-0.1 #1.9 -\rhp 
      -\mkTweak #0.2 #-0.7 ^\lhfour ~
      a'\1-\mkTweak #1.0 #-1.4 ^\lhone
      g\4 
      g'\2-\mkTweak #0.2 #-1.2 ^\lhfour 
      a, 
      e' 
      < g\4 c'\3>4-\mkTweak #1 #5.6 -\lhone |
      % Bar 4
      d,4-\mkTweak #-0.2 #2.8 -\rhp
      < a\4 d'\3>-\mkTweak #-0.2 #3.45 -\rhp 
      -\mkTweak #1 #5.5 -\lhguideone -\mkTweak #1 #5.8 -\lhguidethree
      \revert Script #'padding 
      d,8\staccato-\mkTweak #-0.2 #2.9 -\rhp
      c'-\mkTweak #-2 #3.9 -\rhp
      < f\5 d'\3 >-\mkTweak #1 #4.5 -\lhthree
      e' |
      \break
      % Bar 5
      d,8 
      d'\3 
      \strpHarmSeven g\4-\mkTweak #1.6 #4.05 -\lhtwo
      c' 
      d, 
      d'\3 
      e'-\mkTweak #-0.5 #3.4 -\rhp 
      c''-\mkTweak #-0.3 #8.3 -\rha 
      -\mkTweak #1 #9.4 -\lhone |
      % Bar 6
      a,8
      g 
      a\4 
      c' 
      < d'' a,> \glissando 
      e'' 
      b4\4 \glissando |
      % Bar 7
      \stemDown 
      \once\override Stem #'length = #'3
      \slashedGrace { 
        g8\4 } 
      < a, b'\1 >8-\mkTweak #-0.1 #1.9 -\rhp ~
      < \invTNH b'\1 a'\1> 
      g\4 
      g'\2 
      a, 
      e' 
      g\4
      c'\3 |



  }
% Dynamics
%% DynamicsOne

  dynamicsone = {
    \textLengthOff
    \override TextScript #'outside-staff-priority = ##f
    \tabFullNotation
    \override TextSpanner #'outside-staff-priority = ##f
    \tsMove #0 #-1.04 \strDampening s2\startTextSpan s2 s2 s2 s2 s2 s2
    s4\stopTextSpan
    s4 s4 s4 
    \tsMove #0 #-1.04 \strDampening s4\startTextSpan s4\stopTextSpan 
    % Bar 2 
    s8 \tsMove #0 #-1.04 \strDampening s8\startTextSpan s8 s8 s4\stopTextSpan s4 |
    % Bar 3
    s4 s8 \tsMove #0 #-1.04 \strDampening s8\startTextSpan s8 s8\stopTextSpan
    \tsMove #0 #-1.04 \strDampening
    s8\startTextSpan s8 |
    % Bar 4
    s4 s4 s4 s8 s8\stopTextSpan |
    % Bar 5
    s4 \tsMove #0 #-1.04 \strDampening s4\startTextSpan s4 s8\stopTextSpan s8 |
    % Bar 6
    s4 \tsMove #0 #-1.04 \strDampening s4\startTextSpan s4\stopTextSpan s4 |
    % Bar 7
    s4 s8 \tsMove #0 #-1.04 \strDampening s8\startTextSpan s8 s8\stopTextSpan
    s8
    \tsMove #-0.03 #-1.04 \strDampening
    \override TextSpanner #'after-line-breaking =
    #ly:spanner::kill-zero-spanned-time \endSpanners  
    s8\startTextSpan |
    % Bar 8
    s8 
  }
%% DynamicsTwo
  dynamicstwo = {
    \textLengthOff
    \override TextScript #'outside-staff-priority = ##f
    \tabFullNotation
    \override TextSpanner #'outside-staff-priority = ##f
    \tsMove #0 #-2.04 \strDampening s2\startTextSpan s2 s2 s2 s2 s2 s2 s4 s4\stopTextSpan s4 s4
    \tsMove #0 #-2.04 \strDampening s4\startTextSpan s4
    % Bar 2
    s4 s8 s8\stopTextSpan \tsMove #0 #-2.04 \strDampening s4\startTextSpan s4 |
    % Bar 3
    s4 s8 s8\stopTextSpan s8 \tsMove #0 #-2.04 \strDampening s8\startTextSpan s4 |
    % Bar 4
    s4 s4 s8  s8\stopTextSpan \override TextSpanner #'after-line-breaking =
  #ly:spanner::kill-zero-spanned-time \endSpanners \tsMove #0 #-2.04 \strDampening s4 |
  % Bar 5
  \tsMove #0 #-2.04 \strDampening s4\startTextSpan s8 s8\stopTextSpan s8
  \tsMove #0 #-2.04 \strDampening
  s8\startTextSpan s4 |
  % Bar 6
  s4 s8 s8\stopTextSpan \tsMove #0 #-2.04 \strDampening s4\startTextSpan s4 |
  % Bar 7
  s4 s8 s8\stopTextSpan s8 \override TextSpanner #'after-line-breaking =
  #ly:spanner::kill-zero-spanned-time \endSpanners \tsMove #0 #-2.04 \strDampening s8\startTextSpan s4 |
  % Bar 8
  s4\stopTextSpan

  }

%% DynamicsThree
  dynamicsthree = {
    \textLengthOff
    \override TextScript #'outside-staff-priority = ##f
    \tabFullNotation
    \override TextSpanner #'outside-staff-priority = ##f
    \tsMove #0 #-3.04 \strDampening s2\startTextSpan s2 s2 s2 s2 s2 s4 s4\stopTextSpan
    s2 s2 
    \tsMove #0 #-3.04 \strDampening s4\startTextSpan s4 
    % Bar 2
    s8 s8\stopTextSpan s4 \tsMove #0 #-3.04 \strDampening s4\startTextSpan s4 |
    % Bar 3
    s4 s4 s4 s4\stopTextSpan |
    % Bar 4
    \tsMove #0 #-3.04 \strDampening s4\startTextSpan s4\stopTextSpan s4 s4 |
    % Bar 5
    s4 s8 \tsMove #0 #-3.04 \strDampening s8\startTextSpan s8 s8\stopTextSpan
    \tsMove #0 #-3.04 \strDampening
    s8\startTextSpan s8 |
    % Bar 6
    s8 s8\stopTextSpan s4 \tsMove #0 #-3.04 \strDampening s4\startTextSpan s4 |
    % Bar 7
    s4 s4 s4 s8 s8\stopTextSpan |
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
    \override TextSpanner #'outside-staff-priority = ##f
    s1 s1 s1 s1 s2 
    \tsMove #0 #-5.04 \strDampening s4\startTextSpan s4 
    % Bar 2
    s4\stopTextSpan s2. |
    % Bar 3
    s1
    % Bar 4
    s2 s16 \textSpannerDown \tsMove #-0.03 #2.04 \twoStrDamp s16\startTextSpan s8 s4\stopTextSpan |
    % Bar 5
    s2. \tsMove #-0.03 #2.04 \twoStrDamp s4\startTextSpan |
    % Bar 6
    s4\stopTextSpan 
  }
%% DynamicsSix
  dynamicssix = {
    \textLengthOff
    \override TextScript #'outside-staff-priority = ##f
    \override TextSpanner #'outside-staff-priority = ##f
    \tabFullNotation
    s1 s1 s1 s1 s2 s2
    % Bar 2
    s1
    % Bar 3
    s1 
    % Bar 4
    s4 s4 s16 \tsMove #0 #-6.04 \strDampening s16\startTextSpan s8
    s4\stopTextSpan |
    % Bar 5
    s2 s4 \tsMove #0 #-6.04 \strDampening s4\startTextSpan |
    % Bar 6
    s4\stopTextSpan
  }
%% SixStr
  sixstr = {
    \textLengthOff
    \override TextScript #'outside-staff-priority = ##f
    \tabFullNotation
    \override TextSpanner #'outside-staff-priority = ##f
     s1 s1 s1 s1   \override TrillSpanner #'after-line-breaking =
  #ly:spanner::kill-zero-spanned-time 
    \trMove #0.3 #-13 \vibrato #'(1) #1.8 s8\sVib -\mkTweak #0.01 #-3 _\markup { \sans
    "v " } s8 s32 s32 s32 s32 s32 s32 s32 s32\eVib
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
          \clef "moderntabII"
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
         2.9) }
         \context {
           \TabStaff
            \override Clef #'stencil = #clef::print-modern-custom-tab-if-set
          }
     
   }
      \midi {}


    }
  }
