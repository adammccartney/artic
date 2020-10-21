\book {
    \bookOutputSuffix "violin"
    \header {
        subtitle = "Violin Part"
    }
    \score {
        \keepWithTag #'(violin)
        \include "../segments.ily"
    }
}

\book {
    \bookOutputSuffix "monosynth"
    \header {
        subtitle = "Monosynth Part"
    }
    \score {
        \keepWithTag #'(monosynth)
        \include "../segments.ily"
    }
}

\book {
    \bookOutputSuffix "polysynth"
    \header {
        subtitle = "Polysynth Part"
    }
    \score {
        \keepWithTag #'(polysynth)
        \include "../segments.ily"
    }
}
