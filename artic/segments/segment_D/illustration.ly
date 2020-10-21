\version "2.20.0"                                                              %! abjad.LilyPondFile._get_format_pieces()
\language "english"                                                            %! abjad.LilyPondFile._get_format_pieces()

#(ly:set-option 'relative-includes #t)

\include "../../stylesheets/stylesheet.ily"                                    %! abjad.LilyPondFile._get_formatted_includes()

\header {                                                                      %! abjad.LilyPondFile._get_formatted_blocks()
    title = ##f
    composer = ##f
}                                                                              %! abjad.LilyPondFile._get_formatted_blocks()

\score {                                                                       %! abjad.LilyPondFile._get_formatted_blocks()
    \context Score = "Score"                                                   %! artic.ScoreTemplate.__call__()
    \with                                                                      %! artic.ScoreTemplate.__call__()
    {                                                                          %! artic.ScoreTemplate.__call__()
        markFormatter = #format-mark-box-alphabet                              %! artic.ScoreTemplate.__call__()
    }                                                                          %! artic.ScoreTemplate.__call__()
    <<                                                                         %! artic.ScoreTemplate.__call__()
        \context MusicContext = "Music_Context"                                %! artic.ScoreTemplate.__call__()
        <<                                                                     %! artic.ScoreTemplate.__call__()
            \tag #'violin
            \context Staff = "Violin"                                          %! artic.ScoreTemplate.__call__()
            \with                                                              %! artic.ScoreTemplate.__call__()
            {                                                                  %! artic.ScoreTemplate.__call__()
                midiInstrument = #"violin"                                     %! artic.ScoreTemplate.__call__()
            }                                                                  %! artic.ScoreTemplate.__call__()
            <<                                                                 %! artic.ScoreTemplate.__call__()
                \context Voice = "Violin_Markup_Voice"                         %! artic.ScoreTemplate.__call__()
                {                                                              %! artic.ScoreTemplate.__call__()
                    \override TextScript.staff-padding = 1.5
                    \override TextSpanner.staff-padding = 2.25
                    s1 * 1/1
                    - \abjad-invisible-line
                    - \tweak bound-details.left.text \markup {
                        \concat
                            {
                                \upright
                                    flautando
                                \hspace
                                    #0.5
                            }
                        }
                    \startTextSpan
                    s1 * 1/1
                    s1 * 1/1
                    \override TextScript.staff-padding = 5.5
                    \override TextSpanner.staff-padding = 6.25
                    s1 * 1/1
                    \stopTextSpan
                    - \abjad-invisible-line
                    - \tweak bound-details.left.text \markup {
                        \concat
                            {
                                \upright
                                    "sul IV"
                                \hspace
                                    #0.5
                            }
                        }
                    \startTextSpan
                    s1 * 1/2
                    s1 * 1/2
                    s1 * 1/1
                    s1 * 1/2
                    s1 * 1/2
                    s1 * 1/1
                    s1 * 1/2
                    s1 * 1/2
                    s1 * 1/1
                    s1 * 1/2
                    s1 * 1/2
                    s1 * 1/1
                    s1 * 1/1
                    s1 * 1/1
                    s1 * 1/1
                    s1 * 1/1
                    s1 * 1/1
                    s1 * 1/1
                    \override TextScript.staff-padding = 1.5
                    \override TextSpanner.staff-padding = 2.25
                    s1 * 1/1
                    \stopTextSpan
                    - \abjad-invisible-line
                    - \tweak bound-details.left.text \markup {
                        \concat
                            {
                                \upright
                                    flautando
                                \hspace
                                    #0.5
                            }
                        }
                    \startTextSpan
                    s1 * 1/1
                    s1 * 1/1
                    \override TextScript.staff-padding = 2.5
                    \override TextSpanner.staff-padding = 3.25
                    s1 * 1/1
                    \stopTextSpan
                    - \abjad-invisible-line
                    - \tweak bound-details.left.text \markup {
                        \concat
                            {
                                \upright
                                    "sul II"
                                \hspace
                                    #0.5
                            }
                        }
                    \startTextSpan
                    s1 * 1/2
                    s1 * 1/2
                    s1 * 1/1
                    s1 * 1/2
                    s1 * 1/2
                    s1 * 1/1
                    s1 * 1/2
                    s1 * 1/2
                    s1 * 1/1
                    s1 * 1/2
                    s1 * 1/2
                    s1 * 1/1
                    s1 * 1/1
                    s1 * 1/1
                    s1 * 1/1
                    s1 * 1/1
                    s1 * 1/1
                    s1 * 1/1
                    s1 * 1/1
                    s1 * 1/1
                    s1 * 1/1
                    s1 * 1/1
                    s1 * 1/4
                    s1 * 3/8
                    \override TextScript.staff-padding = 2.5
                    \override TextSpanner.staff-padding = 3.25
                    s1 * 1/4
                    \stopTextSpan
                    - \abjad-invisible-line
                    - \tweak bound-details.left.text \markup {
                        \concat
                            {
                                \upright
                                    "sul III"
                                \hspace
                                    #0.5
                            }
                        }
                    \startTextSpan
                    s1 * 3/8
                    \override TextScript.staff-padding = 4.5
                    \override TextSpanner.staff-padding = 5.25
                    s1 * 1/4
                    \stopTextSpan
                    - \abjad-invisible-line
                    - \tweak bound-details.left.text \markup {
                        \concat
                            {
                                \upright
                                    "sul I"
                                \hspace
                                    #0.5
                            }
                        }
                    \startTextSpan
                    s1 * 3/8
                    \override TextScript.staff-padding = 5.5
                    \override TextSpanner.staff-padding = 6.25
                    s1 * 1/4
                    \stopTextSpan
                    - \abjad-invisible-line
                    - \tweak bound-details.left.text \markup {
                        \concat
                            {
                                \upright
                                    "sul III"
                                \hspace
                                    #0.5
                            }
                        }
                    \startTextSpan
                    s1 * 3/8
                    \override TextScript.staff-padding = 2.5
                    \override TextSpanner.staff-padding = 3.25
                    s1 * 1/4
                    \stopTextSpan
                    - \abjad-invisible-line
                    - \tweak bound-details.left.text \markup {
                        \concat
                            {
                                \upright
                                    "sul I"
                                \hspace
                                    #0.5
                            }
                        }
                    \startTextSpan
                    s1 * 3/8
                    \override TextScript.staff-padding = 4.5
                    \override TextSpanner.staff-padding = 5.25
                    s1 * 1/4
                    \stopTextSpan
                    - \abjad-invisible-line
                    - \tweak bound-details.left.text \markup {
                        \concat
                            {
                                \upright
                                    "sul III"
                                \hspace
                                    #0.5
                            }
                        }
                    \startTextSpan
                    s1 * 3/8
                    \override TextScript.staff-padding = 4.5
                    \override TextSpanner.staff-padding = 5.25
                    s1 * 1/4
                    \stopTextSpan
                    - \abjad-invisible-line
                    - \tweak bound-details.left.text \markup {
                        \concat
                            {
                                \upright
                                    "sul I"
                                \hspace
                                    #0.5
                            }
                        }
                    \startTextSpan
                    s1 * 3/8
                    \override TextScript.staff-padding = 6.5
                    \override TextSpanner.staff-padding = 7.25
                    s1 * 1/4
                    \stopTextSpan
                    - \abjad-invisible-line
                    - \tweak bound-details.left.text \markup {
                        \concat
                            {
                                \upright
                                    "sul III"
                                \hspace
                                    #0.5
                            }
                        }
                    \startTextSpan
                    s1 * 3/8
                    s1 * 1/4
                    s1 * 3/8
                    \override TextScript.staff-padding = 7.5
                    \override TextSpanner.staff-padding = 8.25
                    s1 * 1/4
                    \stopTextSpan
                    - \abjad-invisible-line
                    - \tweak bound-details.left.text \markup {
                        \concat
                            {
                                \upright
                                    "sul I"
                                \hspace
                                    #0.5
                            }
                        }
                    \startTextSpan
                    s1 * 3/8
                    s1 * 1/4
                    s1 * 3/8
                    \stopTextSpan
                }                                                              %! artic.ScoreTemplate.__call__()
                \context Voice = "Violin_Music_Voice"                          %! artic.ScoreTemplate.__call__()
                {                                                              %! artic.ScoreTemplate.__call__()
                    \time 4/4
                    \clef "treble"
                    \mark #4
                    g1
                    ~
                    g1
                    ~
                    g1
                    ~
                    \override Staff.NoteHead.style = #'harmonic-mixed
                    g'1
                    \repeat tremolo 16 {
                        g'32
                        d''32
                    }
                    d''1
                    \repeat tremolo 16 {
                        b''32
                        g''32
                    }
                    d''1
                    \repeat tremolo 16 {
                        b''32
                        g''32
                    }
                    d''1
                    \repeat tremolo 16 {
                        g'32
                        d''32
                    }
                    g'1
                    \override Staff.NoteHead.style = #'default
                    g1
                    ~
                    g1
                    ~
                    g1
                    r1
                    r1
                    r1
                    \override Staff.NoteHead.style = #'default
                    a'1
                    ~
                    \override Staff.NoteHead.style = #'default
                    a'1
                    ~
                    \override Staff.NoteHead.style = #'default
                    a'1
                    ~
                    \override Staff.NoteHead.style = #'harmonic-mixed
                    a''1
                    \repeat tremolo 16 {
                        a''32
                        e'''32
                    }
                    e'''1
                    ~
                    \repeat tremolo 16 {
                        cs''''32
                        a'''32
                    }
                    e'''1
                    \repeat tremolo 16 {
                        cs''''32
                        a'''32
                    }
                    e'''1
                    \repeat tremolo 16 {
                        a''32
                        e'''32
                    }
                    a''1
                    \override Staff.NoteHead.style = #'default
                    a'1
                    ~
                    a'1
                    ~
                    a'1
                    ~
                    a'1
                    ~
                    a'1
                    ~
                    a'1
                    ~
                    a'1
                    ~
                    a'1
                    ~
                    a'1
                    ~
                    a'1
                    {
                        \time 5/8
                        r4
                        r4.
                    }
                    r4
                    d'4.
                    -.
                    r4
                    \override Staff.NoteHead.style = #'harmonic-mixed
                    e'''4.
                    -.
                    r4
                    a''4.
                    -.
                    r4
                    \override Staff.NoteHead.style = #'default
                    e''4.
                    -.
                    r4
                    \override Staff.NoteHead.style = #'harmonic-mixed
                    a''4.
                    -.
                    r4
                    e'''4.
                    -.
                    r4
                    d'''4.
                    -.
                    r4
                    \override Staff.NoteHead.style = #'default
                    d'4.
                    -.
                    r4
                    \override Staff.NoteHead.style = #'harmonic-mixed
                    b'''4.
                    -.
                    r4
                    e''''4.
                    -.
                    \bar "||"
                }                                                              %! artic.ScoreTemplate.__call__()
                \context Voice = "Violin_Dynamics_Voice"                       %! artic.ScoreTemplate.__call__()
                {                                                              %! artic.ScoreTemplate.__call__()
                    s1 * 1/1
                    _ #(make-dynamic-script (markup #:whiteout #:normal-text #:italic "niente"))
                    s1 * 1/1
                    \<
                    s1 * 1/1
                    \pp
                    s1 * 1/1
                    s1 * 1/2
                    s1 * 1/2
                    s1 * 1/1
                    s1 * 1/2
                    s1 * 1/2
                    s1 * 1/1
                    s1 * 1/2
                    s1 * 1/2
                    s1 * 1/1
                    s1 * 1/2
                    s1 * 1/2
                    s1 * 1/1
                    s1 * 1/1
                    s1 * 1/1
                    s1 * 1/1
                    s1 * 1/1
                    s1 * 1/1
                    s1 * 1/1
                    s1 * 1/1
                    s1 * 1/1
                    s1 * 1/1
                    s1 * 1/1
                    s1 * 1/2
                    s1 * 1/2
                    s1 * 1/1
                    s1 * 1/2
                    s1 * 1/2
                    s1 * 1/1
                    s1 * 1/2
                    s1 * 1/2
                    s1 * 1/1
                    s1 * 1/2
                    s1 * 1/2
                    s1 * 1/1
                    s1 * 1/1
                    s1 * 1/1
                    s1 * 1/1
                    s1 * 1/1
                    s1 * 1/1
                    s1 * 1/1
                    s1 * 1/1
                    s1 * 1/1
                    s1 * 1/1
                    s1 * 1/1
                    s1 * 1/4
                    s1 * 3/8
                    s1 * 1/4
                    s1 * 3/8
                    s1 * 1/4
                    s1 * 3/8
                    s1 * 1/4
                    s1 * 3/8
                    s1 * 1/4
                    s1 * 3/8
                    s1 * 1/4
                    s1 * 3/8
                    s1 * 1/4
                    s1 * 3/8
                    s1 * 1/4
                    s1 * 3/8
                    s1 * 1/4
                    s1 * 3/8
                    s1 * 1/4
                    s1 * 3/8
                    s1 * 1/4
                    s1 * 3/8
                    \!
                }                                                              %! artic.ScoreTemplate.__call__()
            >>                                                                 %! artic.ScoreTemplate.__call__()
            \tag #'monosynth
            \context Staff = "Monosynth"                                       %! artic.ScoreTemplate.__call__()
            \with                                                              %! artic.ScoreTemplate.__call__()
            {                                                                  %! artic.ScoreTemplate.__call__()
                midiInstrument = #"clarinet"                                   %! artic.ScoreTemplate.__call__()
            }                                                                  %! artic.ScoreTemplate.__call__()
            <<                                                                 %! artic.ScoreTemplate.__call__()
                \context Voice = "Monosynth_Markup_Voice"                      %! artic.ScoreTemplate.__call__()
                {                                                              %! artic.ScoreTemplate.__call__()
                    s1 * 1/1
                    s1 * 1/1
                    s1 * 1/1
                    s1 * 1/2
                    s1 * 1/2
                    s1 * 1/1
                    s1 * 1/1
                    s1 * 1/1
                    s1 * 1/1
                    s1 * 1/1
                    s1 * 1/1
                    s1 * 1/1
                    s1 * 1/1
                    s1 * 1/2
                    s1 * 1/2
                    s1 * 1/1
                    s1 * 1/1
                    s1 * 1/1
                    s1 * 1/1
                    s1 * 1/1
                    s1 * 1/1
                    s1 * 1/1
                    s1 * 1/1
                    s1 * 1/2
                    s1 * 1/2
                    s1 * 1/1
                    s1 * 1/1
                    s1 * 1/1
                    s1 * 1/1
                    s1 * 1/1
                    s1 * 1/1
                    s1 * 1/1
                    s1 * 1/1
                    s1 * 1/2
                    s1 * 1/2
                    s1 * 1/1
                    s1 * 1/1
                    s1 * 1/1
                    s1 * 1/1
                    s1 * 1/1
                    s1 * 1/1
                    s1 * 1/1
                    s1 * 1/1
                    s1 * 1/1
                    s1 * 1/4
                    s1 * 3/8
                    s1 * 1/4
                    s1 * 3/8
                    s1 * 1/4
                    s1 * 3/8
                    s1 * 1/4
                    s1 * 3/8
                    s1 * 1/4
                    s1 * 3/8
                    s1 * 1/4
                    s1 * 3/8
                    s1 * 1/4
                    s1 * 3/8
                    s1 * 1/4
                    s1 * 3/8
                    s1 * 1/4
                    s1 * 3/8
                    s1 * 1/4
                    s1 * 3/8
                    s1 * 1/4
                    s1 * 3/8
                    \stopTextSpan
                }                                                              %! artic.ScoreTemplate.__call__()
                \context Voice = "Monosynth_Music_Voice"                       %! artic.ScoreTemplate.__call__()
                {                                                              %! artic.ScoreTemplate.__call__()
                    \time 4/4
                    \clef "treble"
                    \mark #4
                    <g b'>1
                    :32
                    ~
                    <g b'>1
                    :32
                    ~
                    <g b'>1
                    :32
                    ~
                    <g b'>2
                    :32
                    ~
                    g2
                    :32
                    ~
                    g1
                    :32
                    ~
                    g1
                    :32
                    ~
                    g1
                    :32
                    ~
                    g1
                    :32
                    ~
                    g1
                    :32
                    ~
                    g1
                    :32
                    ~
                    g1
                    :32
                    ~
                    g1
                    :32
                    ~
                    g2
                    :32
                    ~
                    <g b'>2
                    :32
                    ~
                    <g b'>1
                    :32
                    ~
                    <g b'>1
                    :32
                    ~
                    <g b'>1
                    :32
                    ~
                    <g b'>1
                    :32
                    ~
                    r1
                    <a' cs'''>1
                    :32
                    ~
                    <a' cs'''>1
                    :32
                    ~
                    <a' cs'''>1
                    :32
                    ~
                    <a' cs'''>2
                    :32
                    ~
                    a'2
                    :32
                    ~
                    a'1
                    :32
                    ~
                    a'1
                    :32
                    ~
                    a'1
                    :32
                    ~
                    a'1
                    :32
                    ~
                    a'1
                    :32
                    ~
                    a'1
                    :32
                    ~
                    a'1
                    :32
                    ~
                    a'1
                    :32
                    ~
                    a'2
                    :32
                    ~
                    <a' cs'''>2
                    :32
                    ~
                    <a' cs'''>1
                    :32
                    ~
                    <a' cs'''>1
                    :32
                    ~
                    r1
                    r1
                    r1
                    r1
                    r1
                    r1
                    r1
                    {
                        \time 5/8
                        r4
                        r4.
                    }
                    r4
                    r4.
                    r4
                    r4.
                    r4
                    r4.
                    r4
                    r4.
                    r4
                    r4.
                    r4
                    r4.
                    r4
                    r4.
                    r4
                    r4.
                    r4
                    r4.
                    r4
                    r4.
                }                                                              %! artic.ScoreTemplate.__call__()
                \context Voice = "Monosynth_Dynamics_Voice"                    %! artic.ScoreTemplate.__call__()
                {                                                              %! artic.ScoreTemplate.__call__()
                    s1 * 1/1
                    _ #(make-dynamic-script (markup #:whiteout #:normal-text #:italic "niente"))
                    s1 * 1/1
                    \<
                    s1 * 1/1
                    \p
                    s1 * 1/2
                    \>
                    s1 * 1/2
                    s1 * 1/1
                    _ #(make-dynamic-script (markup #:whiteout #:normal-text #:italic "niente"))
                    s1 * 1/1
                    \<
                    s1 * 1/1
                    \p
                    s1 * 1/1
                    \>
                    s1 * 1/1
                    s1 * 1/1
                    \<
                    s1 * 1/1
                    \p
                    s1 * 1/1
                    \>
                    s1 * 1/2
                    s1 * 1/2
                    \<
                    s1 * 1/1
                    \>
                    s1 * 1/1
                    \<
                    s1 * 1/1
                    \>
                    s1 * 1/1
                    s1 * 1/1
                    _ #(make-dynamic-script (markup #:whiteout #:normal-text #:italic "niente"))
                    s1 * 1/1
                    s1 * 1/1
                    \<
                    s1 * 1/1
                    \>
                    s1 * 1/2
                    \<
                    s1 * 1/2
                    \>
                    s1 * 1/1
                    s1 * 1/1
                    \<
                    s1 * 1/1
                    \>
                    s1 * 1/1
                    \<
                    s1 * 1/1
                    \>
                    s1 * 1/1
                    \<
                    s1 * 1/1
                    \>
                    \<
                    s1 * 1/1
                    \>
                    s1 * 1/2
                    s1 * 1/2
                    s1 * 1/1
                    s1 * 1/1
                    _ #(make-dynamic-script (markup #:whiteout #:normal-text #:italic "niente"))
                    s1 * 1/1
                    s1 * 1/1
                    s1 * 1/1
                    s1 * 1/1
                    s1 * 1/1
                    s1 * 1/1
                    s1 * 1/1
                    s1 * 1/4
                    s1 * 3/8
                    s1 * 1/4
                    s1 * 3/8
                    s1 * 1/4
                    s1 * 3/8
                    s1 * 1/4
                    s1 * 3/8
                    s1 * 1/4
                    s1 * 3/8
                    s1 * 1/4
                    s1 * 3/8
                    s1 * 1/4
                    s1 * 3/8
                    s1 * 1/4
                    s1 * 3/8
                    s1 * 1/4
                    s1 * 3/8
                    s1 * 1/4
                    s1 * 3/8
                    s1 * 1/4
                    s1 * 3/8
                    \!
                }                                                              %! artic.ScoreTemplate.__call__()
            >>                                                                 %! artic.ScoreTemplate.__call__()
            \tag #'polysynth
            \context PianoStaff = "Polysynth_Staff_Group"                      %! artic.ScoreTemplate.__call__()
            \with                                                              %! artic.ScoreTemplate.__call__()
            {                                                                  %! artic.ScoreTemplate.__call__()
                midiInstrument = #"organ"                                      %! artic.ScoreTemplate.__call__()
            }                                                                  %! artic.ScoreTemplate.__call__()
            <<                                                                 %! artic.ScoreTemplate.__call__()
                \context Staff = "RH_Polysynth"                                %! artic.ScoreTemplate.__call__()
                <<                                                             %! artic.ScoreTemplate.__call__()
                    \context Voice = "RH_I_Markup_Voice"                       %! artic.ScoreTemplate.__call__()
                    {                                                          %! artic.ScoreTemplate.__call__()
                        s1 * 1/1
                        s1 * 1/1
                        s1 * 1/1
                        s1 * 1/1
                        s1 * 1/1
                        s1 * 1/1
                        s1 * 1/1
                        s1 * 1/1
                        s1 * 1/1
                        s1 * 1/1
                        s1 * 1/1
                        s1 * 1/1
                        s1 * 1/1
                        s1 * 1/1
                        s1 * 1/1
                        s1 * 1/1
                        s1 * 1/1
                        s1 * 1/1
                        s1 * 1/1
                        s1 * 1/1
                        s1 * 1/1
                        s1 * 1/1
                        s1 * 1/1
                        s1 * 1/1
                        s1 * 1/1
                        s1 * 1/1
                        s1 * 1/1
                        s1 * 1/1
                        s1 * 1/1
                        s1 * 1/2
                        s1 * 1/2
                        s1 * 3/4
                        s1 * 1/4
                        s1 * 1/2
                        s1 * 1/2
                        s1 * 1/1
                        s1 * 1/1
                        s1 * 1/2
                        s1 * 1/2
                        s1 * 1/1
                        s1 * 1/4
                        s1 * 3/4
                        s1 * 1/1
                        s1 * 1/1
                        s1 * 1/1
                        s1 * 1/4
                        s1 * 3/8
                        s1 * 1/4
                        s1 * 3/8
                        s1 * 1/4
                        s1 * 3/8
                        s1 * 1/4
                        s1 * 3/8
                        s1 * 1/4
                        s1 * 3/8
                        s1 * 1/4
                        s1 * 3/8
                        s1 * 1/4
                        s1 * 3/8
                        s1 * 1/4
                        s1 * 3/8
                        s1 * 1/4
                        s1 * 3/8
                        s1 * 1/4
                        s1 * 3/8
                        s1 * 1/4
                        s1 * 3/8
                        \stopTextSpan
                    }                                                          %! artic.ScoreTemplate.__call__()
                    \context Voice = "RH_I_Music_Voice"                        %! artic.ScoreTemplate.__call__()
                    {                                                          %! artic.ScoreTemplate.__call__()
                        {
                            \time 4/4
                            \clef "treble"
                            \mark #4
                            r1
                        }
                        r1
                        r1
                        r1
                        r1
                        r1
                        r1
                        r1
                        r1
                        r1
                        r1
                        r1
                        r1
                        r1
                        r1
                        r1
                        r1
                        r1
                        r1
                        r1
                        r1
                        r1
                        r1
                        r1
                        r1
                        r1
                        r1
                        r1
                        r1
                        r2
                        e'2
                        ~
                        <e' fs'>2.
                        ~
                        <e' fs' a'>4
                        ~
                        <e' fs' a'>2
                        ~
                        <e' fs' a' cs''>2
                        ~
                        <e' fs' a' cs''>1
                        ~
                        <a' e'' fs''>1
                        ~
                        <a' e'' fs''>2
                        ~
                        <a' cs'' e'' fs''>2
                        ~
                        <a' cs'' e'' fs''>1
                        ~
                        <a' cs'' e'' fs''>4
                        ~
                        <e'' fs''>2.
                        ~
                        fs''1
                        ~
                        fs''1
                        ~
                        fs''1
                        ~
                        {
                            \time 5/8
                            r4
                            r4.
                        }
                        r4
                        <a' e'' fs''>4.
                        -.
                        r4
                        e''4.
                        -.
                        r4
                        <cs'' e''>4.
                        -.
                        r4
                        <e' fs' a'>4.
                        -.
                        r4
                        fs''4.
                        -.
                        r4
                        e''4.
                        -.
                        r4
                        <cs'' e''>4.
                        -.
                        r4
                        e'4.
                        -.
                        r4
                        <e'' fs''>4.
                        -.
                        r4
                        <a' cs'' e''>4.
                        -.
                        \bar "||"
                    }                                                          %! artic.ScoreTemplate.__call__()
                    \context Voice = "RH_I_Dynamics_Voice"                     %! artic.ScoreTemplate.__call__()
                    {                                                          %! artic.ScoreTemplate.__call__()
                        s1 * 1/1
                        s1 * 1/1
                        s1 * 1/1
                        s1 * 1/1
                        s1 * 1/1
                        s1 * 1/1
                        s1 * 1/1
                        s1 * 1/1
                        s1 * 1/1
                        s1 * 1/1
                        s1 * 1/1
                        s1 * 1/1
                        s1 * 1/1
                        s1 * 1/1
                        s1 * 1/1
                        s1 * 1/1
                        s1 * 1/1
                        s1 * 1/1
                        s1 * 1/1
                        s1 * 1/1
                        s1 * 1/1
                        s1 * 1/1
                        s1 * 1/1
                        s1 * 1/1
                        s1 * 1/1
                        s1 * 1/1
                        s1 * 1/1
                        s1 * 1/1
                        s1 * 1/1
                        s1 * 1/2
                        s1 * 1/2
                        \pp
                        s1 * 3/4
                        s1 * 1/4
                        s1 * 1/2
                        s1 * 1/2
                        s1 * 1/1
                        s1 * 1/1
                        s1 * 1/2
                        s1 * 1/2
                        s1 * 1/1
                        s1 * 1/4
                        s1 * 3/4
                        s1 * 1/1
                        s1 * 1/1
                        s1 * 1/1
                        s1 * 1/4
                        s1 * 3/8
                        s1 * 1/4
                        s1 * 3/8
                        s1 * 1/4
                        s1 * 3/8
                        s1 * 1/4
                        s1 * 3/8
                        s1 * 1/4
                        s1 * 3/8
                        s1 * 1/4
                        s1 * 3/8
                        s1 * 1/4
                        s1 * 3/8
                        s1 * 1/4
                        s1 * 3/8
                        s1 * 1/4
                        s1 * 3/8
                        s1 * 1/4
                        s1 * 3/8
                        s1 * 1/4
                        s1 * 3/8
                        \!
                    }                                                          %! artic.ScoreTemplate.__call__()
                >>                                                             %! artic.ScoreTemplate.__call__()
                \context Staff = "LH_Polysynth"                                %! artic.ScoreTemplate.__call__()
                <<                                                             %! artic.ScoreTemplate.__call__()
                    \context Voice = "LH_I_Markup_Voice"                       %! artic.ScoreTemplate.__call__()
                    {                                                          %! artic.ScoreTemplate.__call__()
                        s1 * 1/1
                        s1 * 1/1
                        s1 * 1/1
                        s1 * 1/1
                        s1 * 1/1
                        s1 * 1/2
                        s1 * 1/2
                        s1 * 1/1
                        s1 * 1/1
                        s1 * 1/1
                        s1 * 1/1
                        s1 * 1/1
                        s1 * 1/1
                        s1 * 1/1
                        s1 * 1/1
                        s1 * 1/1
                        s1 * 1/1
                        s1 * 1/1
                        s1 * 1/1
                        s1 * 1/1
                        s1 * 1/1
                        s1 * 1/1
                        s1 * 1/1
                        s1 * 1/1
                        s1 * 1/1
                        s1 * 1/1
                        s1 * 1/1
                        s1 * 1/1
                        s1 * 1/1
                        s1 * 1/1
                        s1 * 1/1
                        s1 * 1/1
                        s1 * 1/1
                        s1 * 1/1
                        s1 * 1/1
                        s1 * 1/1
                        s1 * 1/1
                        s1 * 1/1
                        s1 * 1/1
                        s1 * 1/1
                        s1 * 1/1
                        s1 * 1/4
                        s1 * 3/8
                        s1 * 1/4
                        s1 * 3/8
                        s1 * 1/4
                        s1 * 3/8
                        s1 * 1/4
                        s1 * 3/8
                        s1 * 1/4
                        s1 * 3/8
                        s1 * 1/4
                        s1 * 3/8
                        s1 * 1/4
                        s1 * 3/8
                        s1 * 1/4
                        s1 * 3/8
                        s1 * 1/4
                        s1 * 3/8
                        s1 * 1/4
                        s1 * 3/8
                        s1 * 1/4
                        s1 * 3/8
                        \stopTextSpan
                    }                                                          %! artic.ScoreTemplate.__call__()
                    \context Voice = "LH_I_Music_Voice"                        %! artic.ScoreTemplate.__call__()
                    {                                                          %! artic.ScoreTemplate.__call__()
                        {
                            \time 4/4
                            \clef "bass"
                            \mark #4
                            r1
                        }
                        r1
                        r1
                        r1
                        r1
                        r2
                        e2
                        ~
                        e1
                        ~
                        a,1
                        ~
                        a,1
                        ~
                        <e, a,>1
                        ~
                        <e, a,>1
                        ~
                        <e, a,>1
                        e1
                        ~
                        e1
                        ~
                        e1
                        ~
                        e1
                        ~
                        <e gs>1
                        ~
                        <e gs>1
                        ~
                        <e gs>1
                        ~
                        <e gs>1
                        ~
                        <e gs>1
                        ~
                        <e gs>1
                        a,1
                        ~
                        a,1
                        ~
                        a,1
                        ~
                        a,1
                        ~
                        a,1
                        ~
                        a,1
                        ~
                        <e, a,>1
                        ~
                        <e, a,>1
                        ~
                        <e, a,>1
                        ~
                        <e, a,>1
                        ~
                        <e, a,>1
                        ~
                        <e, a,>1
                        ~
                        <e, a,>1
                        ~
                        <e, a,>1
                        ~
                        <e, a,>1
                        ~
                        <e, a,>1
                        ~
                        <e, a,>1
                        ~
                        <e, a,>1
                        ~
                        {
                            \time 5/8
                            r4
                            r4.
                        }
                        r4
                        <e, a,>4.
                        ~
                        -.
                        r4
                        a,4.
                        ~
                        -.
                        r4
                        <e fs>4.
                        ~
                        -.
                        r4
                        a,4.
                        ~
                        -.
                        r4
                        fs4.
                        ~
                        -.
                        r4
                        <e, fs, a, cs>4.
                        ~
                        -.
                        r4
                        <a, e fs>4.
                        ~
                        -.
                        r4
                        <e, fs, a,>4.
                        ~
                        -.
                        r4
                        <e, a,>4.
                        ~
                        -.
                        r4
                        <e fs>4.
                        -.
                        \bar "||"
                    }                                                          %! artic.ScoreTemplate.__call__()
                    \context Voice = "LH_I_Dynamics_Voice"                     %! artic.ScoreTemplate.__call__()
                    {                                                          %! artic.ScoreTemplate.__call__()
                        s1 * 1/1
                        s1 * 1/1
                        s1 * 1/1
                        s1 * 1/1
                        s1 * 1/1
                        s1 * 1/2
                        s1 * 1/2
                        \pp
                        s1 * 1/1
                        s1 * 1/1
                        s1 * 1/1
                        s1 * 1/1
                        s1 * 1/1
                        s1 * 1/1
                        s1 * 1/1
                        s1 * 1/1
                        s1 * 1/1
                        s1 * 1/1
                        s1 * 1/1
                        s1 * 1/1
                        s1 * 1/1
                        s1 * 1/1
                        s1 * 1/1
                        s1 * 1/1
                        s1 * 1/1
                        s1 * 1/1
                        s1 * 1/1
                        s1 * 1/1
                        s1 * 1/1
                        s1 * 1/1
                        s1 * 1/1
                        s1 * 1/1
                        s1 * 1/1
                        s1 * 1/1
                        s1 * 1/1
                        s1 * 1/1
                        s1 * 1/1
                        s1 * 1/1
                        s1 * 1/1
                        s1 * 1/1
                        s1 * 1/1
                        s1 * 1/1
                        s1 * 1/4
                        s1 * 3/8
                        s1 * 1/4
                        s1 * 3/8
                        s1 * 1/4
                        s1 * 3/8
                        s1 * 1/4
                        s1 * 3/8
                        s1 * 1/4
                        s1 * 3/8
                        s1 * 1/4
                        s1 * 3/8
                        s1 * 1/4
                        s1 * 3/8
                        s1 * 1/4
                        s1 * 3/8
                        s1 * 1/4
                        s1 * 3/8
                        s1 * 1/4
                        s1 * 3/8
                        s1 * 1/4
                        s1 * 3/8
                        \!
                    }                                                          %! artic.ScoreTemplate.__call__()
                >>                                                             %! artic.ScoreTemplate.__call__()
            >>                                                                 %! artic.ScoreTemplate.__call__()
        >>                                                                     %! artic.ScoreTemplate.__call__()
    >>                                                                         %! artic.ScoreTemplate.__call__()
}                                                                              %! abjad.LilyPondFile._get_formatted_blocks()