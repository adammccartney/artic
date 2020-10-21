#(set-default-paper-size "letter" 'portrait)
#(set-global-staff-size 14)

\include "./_stylesheets/abjad.ily"
\include "contexts.ily"

\paper {
    system-system-spacing = 
        #'((basic-distance . 24) 
           (minimum-distance . 15) 
           (padding . 15))
    score-system-spacing =
        #'((basic-distance . 14)
           (minimum-distance . 14)
           (padding . 4)
           (stretchability . 6))
    system-separator-markup = \slashSeparator
    bottom-margin = 7\mm
    evenFooterMarkup = \markup \fill-line {
        " "
        \concat {
            \bold \fontsize #3
            \on-the-fly #print-page-number-check-first
            \fromproperty #'page:page-number-string
            \hspace #15
        }
        " "
    }
    evenHeaderMarkup = \markup \null
    left-margin = 30\mm
    oddFooterMarkup = \markup \fill-line {
        " "
        \concat {
            \bold \fontsize #3
            \on-the-fly #print-page-number-check-first
            \fromproperty #'page:page-number-string
            \hspace #15
        }
        " "
    }
    oddHeaderMarkup = \markup \null
    print-first-page-number = ##f
    print-page-number = ##t
    ragged-bottom = ##t
    ragged-last-bottom = ##t
    right-margin = 30\mm
    top-margin = 12.5\mm
}

\header {
    composer = \markup 
        \override #'(font-name . "Palatino")
        \fontsize #5
        "Adam McCartney (*1987)"
    tagline = \markup \null
    title = \markup \column {
        \center-align {
            \override #'(font-name . "Palatino Italic")
            \fontsize #12
            "artic"
            \vspace #1.25
            \override #'(font-name . "Palatino Italic")
            \fontsize #5
            "for violin, monosynth and polysynth"
        }
    }
}

\layout {
    \accidentalStyle neo-modern
    indent = 0
    ragged-bottom = ##t
    ragged-last = ##t
    ragged-right = ##t
    \context {
      \Staff
      \name ViolinStaff
      \type Engraver_Group
      \alias Staff
      instrumentName = "Violin"
      shortInstrumentName = "Vn."
    }
    \context {
      \name MonosynthStaff
      \type Engraver_Group
      \alias Staff
      instrumentName = "Monosynth"
      shortInstrumentName = "My."
    }
    \context {
      \name PolysynthStaff
      \type Engraver_Group
      \alias Staff
      instrumentName = "Polysynth"
      shortInstrumentName = "Py."
    }
  }

