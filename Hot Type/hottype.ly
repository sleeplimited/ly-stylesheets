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
    \partial 4 \ottava #1 \harmonicByRatio #1/4 < e fis a d'>4~ 
    % Bar 1
    \harmonicByRatio #1/4 < e fis a d'>1~ |
    % Bar 2
    \harmonicByRatio #1/4 < e fis a d'>1~ |
    % Bar 3
    \harmonicByRatio #1/4 < e fis a d'>1~ |
    % Bar 4
    \harmonicByRatio #1/4 < e fis a d'>1 \ottava #0 |
    % Bar 5
    r8 < g a>8 r4 r8 < a b>8 r4 |
    % Bar 6
    g8 r4 \ottava #1 \harmonicByRatio #1/4 < e fis>8~ \harmonicByRatio #1/4 < e
    fis>8 \harmonicByRatio #1/4 < a d'>4. \ottava #0 |

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
    \partial 4 s4 
    % Bar 1
    d,8 r4 c,8~ c,4~ c,8 \times 2/3 { c,16 c, c, } |
    % Bar 2
    d,8[ a,,] b,, c, r4 r8 \times 2/3 { d,16 d, d, } |
    % Bar 3
    d,8 r4 c,8~ c,4~ c,8 \times 2/3 { d,16 d, d, } |
    % Bar 4
    d,8[ a,,] b,, c, r4 r8 \times 2/3 { d,16 d, d, } |
    % Bar 5
    << { r4 b,8 r8 r2 } \\ { d,8 r4 c,8~ c,4 r8 d,8 } >> |
    % Bar 6
    r8 a,,8 c,2~ c,8 \times 2/3 { d,16 d, d,} |




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
    \partial 4
    \harmonicByRatio #1/4 
    < e' fis' a' d''>4-\mkTweak #-1 #2.4 -\rhp -\mkTweak #-1 #8
    -\fourstrdwnstrm -\mkTweak #2 #-2.7 ^\lhthree |
    % Bar 1
      \bsMove #-2 #0 \rightBracketFour d,8^\repeatTie -\mkTweak #-0.5 #3.1 -\lhtwo 
      c'8\rest 
      < \invTNH d,>8
      c,8^\repeatTie -\mkTweak #-0.55 #2.6 -\lhtwo ~ 
      c,4 
      < \invTNH c,>8
      \times 2/3 { c,16-\mkTweak #0.15 #6 -\rhc ^\markup { \halign #CENTER \fontsize #-4 "note 1"} 
      c,-\mkTweak #0.15 #6.4 -\rha 
      c,-\mkTweak #0 #6 -\rhm } |
    % Bar 2
      < \invTNH a,,\6 d,\6>8-\mkTweak #-0.5 #2.6 -\lhfour -\mkTweak #0.2 #5.8 -\rhi ~[ 
      a,,\6]~ 
      < \invTNH a,,\6 b,,\6>-\mkTweak #-0.5 #2.6 -\lhone [~ 
      < \invTNH a,,\6 c,\6>-\mkTweak #-0.5 #2.6 -\lhtwo ] 
      c'4\rest 
      < \invTNH c,>8 
      \times 2/3 { 
        d,16-\mkTweak #-0.5 #4 -\lhfour 
        d, 
        d, } |
    \break
    % Bar 3
      d,8
      c'8\rest 
      < \invTNH d,>8-\mkTweak #-0.5 #2.5 -\rhp 
      c,8-\mkTweak #-0.5 #2.4 -\lhtwo ~ 
      c,4 
      < \invTNH c,>8 
      \times 2/3 { 
        d,16-\mkTweak #-0.5 #4 -\lhfour 
        d, 
        d,} |
    % Bar 4
      < \invTNH a,,\6 d,\6>8[~ 
      a,,\6]~ 
      < \invTNH a,,\6 b,,\6>-\mkTweak #-0.5 #2.6 -\lhone [~ 
      < \invTNH a,,\6 c,\6>-\mkTweak #-0.5 #2.6 -\lhtwo ] 
      c'4\rest
      < \invTNH c,>8 
      \times 2/3 { 
        d,16-\mkTweak #-0.5 #4 -\lhthree 
        d, 
        d, } |
    \break
    % Bar 5
      d,8[ 
      \bsMove #2 #0 \rightBracketFour < g a>8-\mkTweak #-0.7 #7.7 -\rhc
      -\mkTweak #1.8 #7.7 -\lhone
      -\mkTweak #-0.8 #8.2 -\twostrupstrm ]  
      b,-\mkTweak #-0.5 #2.6 -\rhp -\mkTweak #-0.6 #-6.15 ^\oneStrFlick [ 
      \bsMove #2 #-2 \rightBracketTwo c,-\mkTweak #1.8 #3.9 -\lhone ] 
      \stringSnare e[ 
      \bsMove #2 #0 \rightBracketFour < a\4 b\3>-\mkTweak #-0.7 #5.8 -\rhc
      -\mkTweak #1.8 #5.8 -\lhfour -\mkTweak #-0.8 #-3.9 ^\twostrupstrm ] 
      < \invTNH c,>-\mkTweak #-0.5 #2.6 -\rhp [ 
      d,8-\mkTweak #-0.5 #2.4 -\lhthree ] |
    % Bar 6
      \bsMove #3.2 #-1 \rightBracketFive g8\4-\mkTweak #1.8 #6.9 -\lhone
      -\mkTweak #-0.5 #3.8 -\rhp
      -\mkTweak #-0.6 #-5.15 ^\oneStrFlick [ 
      a,,]~ 
      < \invTNH a,,\6 c,\6>-\mkTweak #-0.5 #2.7 -\lhone [ 
      \bsMove #2.2 #0 \rightBracketTwo \harmonicByRatio #1/4 < e'\4
      fis'\3>-\mkTweak #-0.9 #7.7 -\rhc -\mkTweak #2 #6.7 -\lhfour -\mkTweak #-1 #-3.9 ^\twostrupstrm ] 
      < \invTNH c,>[
      \bsMove #2.2 #2 \rightBracketTwo \harmonicByRatio #1/4 < a'
      d''>8-\mkTweak #-0.9 #9 -\rhc -\mkTweak #2 #8.7 -\lhfour
        -\mkTweak #-1 #-2.2 ^\twostrupstrm ] 
      < \invTNH c,> 
      \times 2/3 { 
        d,16-\mkTweak #-0.5 #4 -\lhthree
        d, 
        d,} |
  \pageBreak
  s1 s1 


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
    \partial 4 s4
    s4 s8 \trMove #0.3 #-1.2 \vibrato #'(1) #1 s8^\markup { \sans v } \sVib s8
    s8 s16 s16\eVib  s8
    % Bar 2
    s1 
    % Bar 3
    s4 \tsMove #0 #-8.05 \strDampening s8\startTextSpan \trMove #0.3 #-1.2 \vibrato #'(1) #1
    s8^\markup { \sans v} \sVib\stopTextSpan s4 s16\eVib  s16 s8 |
    % Bar 4
    s1 
    % Bar 5
    s4 \tsMove #0 #-6.1 \strDampening s8\startTextSpan s8\stopTextSpan s4
    \tsMove #0 #-6.1 \strDampening s8\startTextSpan s8\stopTextSpan |
    % Bar 6
    \tsMove #0 #-6.1 \strDampening s8\startTextSpan s8\stopTextSpan s2. 

  }

%% SixStr
  sixstr = {
    \textLengthOff
    \override TextScript #'outside-staff-priority = ##f
    \tabFullNotation
    \partial 4 s4 
    % Bar 1
    s4 s4\mkTweak #-0.04 #-1.9 _\tomTom s4 s4\mkTweak #0.14 #-2.3 _\bass |
    % Bar 2
    s2 s4 s4\mkTweak #0.15 #-2.3 _\bass |
    % Bar 3
    s2 s4 s4\mkTweak #0.15 #-2.3 _\bass |
    % Bar 4
    s2 s4 s4\mkTweak #0.15 #-2.3 _\bass |
    % Bar 5
    s4 s4\mkTweak #0.15 #-1.9 _\bass s4\mkTweak #0.1 #0 _\longBass s4\mkTweak #0.15 #-1.9 _\bass |
    % Bar 6
    s4\mkTweak #0.15 #-1.9 _\bass s4\mkTweak #0.15 #-1.9 _\bass s4\mkTweak #0.15 #-1.9 _\bass s4\mkTweak #0.15 #-1.9 _\bass |
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
        \context {
          \Staff
          \override TimeSignature #'space-alist #'first-note = #'(extra-space .
          4.9) }
      }
      \midi {}


    }
  }
