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
                                    "sul I"
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
                                    "sul III"
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
                                    "sul II"
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
                                    "sul III"
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
                                    "sul II"
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
                                    "sul II"
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
                                    "sul III"
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
                                    "sul II"
                                \hspace
                                    #0.5
                            }
                        }
                    \startTextSpan
                    s1 * 3/8
                    s1 * 1/4
                    s1 * 3/8
                    \override TextScript.staff-padding = 3.5
                    \override TextSpanner.staff-padding = 4.25
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
                    \stopTextSpan
                }                                                              %! artic.ScoreTemplate.__call__()
                \context Voice = "Violin_Music_Voice"                          %! artic.ScoreTemplate.__call__()
                {                                                              %! artic.ScoreTemplate.__call__()
                    \time 4/4
                    \clef "treble"
                    \mark #3
                    e''1
                    ~
                    e''1
                    ~
                    e''1
                    ~
                    \override Staff.NoteHead.style = #'harmonic-mixed
                    e'''1
                    \repeat tremolo 16 {
                        e'''32
                        b'''32
                    }
                    b'''1
                    \repeat tremolo 16 {
                        gs''''32
                        e''''32
                    }
                    b'''1
                    \repeat tremolo 16 {
                        gs''''32
                        e''''32
                    }
                    b'''1
                    \repeat tremolo 16 {
                        e'''32
                        b'''32
                    }
                    e'''1
                    \override Staff.NoteHead.style = #'default
                    e''1
                    ~
                    e''1
                    ~
                    e''1
                    r1
                    r1
                    r1
                    \override Staff.NoteHead.style = #'default
                    d'1
                    ~
                    \override Staff.NoteHead.style = #'default
                    d'1
                    ~
                    \override Staff.NoteHead.style = #'default
                    d'1
                    ~
                    \override Staff.NoteHead.style = #'harmonic-mixed
                    d''1
                    \repeat tremolo 16 {
                        d''32
                        a''32
                    }
                    a''1
                    ~
                    \repeat tremolo 16 {
                        fs'''32
                        d'''32
                    }
                    a''1
                    \repeat tremolo 16 {
                        fs'''32
                        d'''32
                    }
                    a''1
                    \repeat tremolo 16 {
                        d''32
                        a''32
                    }
                    d''1
                    \override Staff.NoteHead.style = #'default
                    d'1
                    ~
                    d'1
                    ~
                    d'1
                    ~
                    d'1
                    ~
                    d'1
                    ~
                    d'1
                    ~
                    d'1
                    ~
                    d'1
                    ~
                    d'1
                    ~
                    d'1
                    {
                        \time 5/8
                        r4
                        r4.
                    }
                    r4
                    a'4.
                    -.
                    r4
                    \override Staff.NoteHead.style = #'harmonic-mixed
                    d''4.
                    -.
                    r4
                    e'''4.
                    -.
                    r4
                    \override Staff.NoteHead.style = #'default
                    d'4.
                    -.
                    r4
                    \override Staff.NoteHead.style = #'harmonic-mixed
                    e'''4.
                    -.
                    r4
                    d''4.
                    -.
                    r4
                    a'''4.
                    -.
                    r4
                    \override Staff.NoteHead.style = #'default
                    a'4.
                    -.
                    r4
                    \override Staff.NoteHead.style = #'harmonic-mixed
                    a''4.
                    -.
                    r4
                    d'''4.
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
                    \clef "treble"
                    \mark #3
                    <e'' gs'''>1
                    :32
                    ~
                    <e'' gs'''>1
                    :32
                    ~
                    <e'' gs'''>1
                    :32
                    ~
                    <e'' gs'''>2
                    :32
                    ~
                    e''2
                    :32
                    ~
                    e''1
                    :32
                    ~
                    e''1
                    :32
                    ~
                    e''1
                    :32
                    ~
                    e''1
                    :32
                    ~
                    e''1
                    :32
                    ~
                    e''1
                    :32
                    ~
                    e''1
                    :32
                    ~
                    e''1
                    :32
                    ~
                    e''2
                    :32
                    ~
                    <e'' gs'''>2
                    :32
                    ~
                    <e'' gs'''>1
                    :32
                    ~
                    <e'' gs'''>1
                    :32
                    ~
                    <e'' gs'''>1
                    :32
                    ~
                    <e'' gs'''>1
                    :32
                    ~
                    r1
                    <d' fs''>1
                    :32
                    ~
                    <d' fs''>1
                    :32
                    ~
                    <d' fs''>1
                    :32
                    ~
                    <d' fs''>2
                    :32
                    ~
                    d'2
                    :32
                    ~
                    d'1
                    :32
                    ~
                    d'1
                    :32
                    ~
                    d'1
                    :32
                    ~
                    d'1
                    :32
                    ~
                    d'1
                    :32
                    ~
                    d'1
                    :32
                    ~
                    d'1
                    :32
                    ~
                    d'1
                    :32
                    ~
                    d'2
                    :32
                    ~
                    <d' fs''>2
                    :32
                    ~
                    <d' fs''>1
                    :32
                    ~
                    <d' fs''>1
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
                        \clef "treble"
                        \mark #3
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
                        r1
                        r2
                        fs'2
                        ~
                        <fs' a'>2.
                        ~
                        <c' fs' a'>4
                        ~
                        <c' fs' a'>2
                        ~
                        <c' fs' a' ef''>2
                        ~
                        <c' fs' a' ef''>1
                        ~
                        <a' c'' ef''>1
                        ~
                        <a' c'' ef''>2
                        ~
                        <c' a' c'' ef''>2
                        ~
                        <c' a' c'' ef''>1
                        ~
                        <c' a' c'' ef''>4
                        ~
                        <c'' ef''>2.
                        ~
                        c''1
                        ~
                        c''1
                        ~
                        c''1
                        ~
                        {
                            \time 5/8
                            r4
                            r4.
                        }
                        r4
                        <a' c'' ef''>4.
                        -.
                        r4
                        c''4.
                        -.
                        r4
                        <c'' ef''>4.
                        -.
                        r4
                        <c' fs' a'>4.
                        -.
                        r4
                        c''4.
                        -.
                        r4
                        c''4.
                        -.
                        r4
                        <c'' ef''>4.
                        -.
                        r4
                        fs'4.
                        -.
                        r4
                        <c'' ef''>4.
                        -.
                        r4
                        <c' c'' ef''>4.
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
                        \clef "bass"
                        \mark #3
                        r1
                        r1
                        r1
                        r1
                        r1
                        r2
                        e2
                        ~
                        e1
                        ~
                        c,1
                        ~
                        c,1
                        ~
                        <c, fs,>1
                        ~
                        <c, fs,>1
                        ~
                        <c, fs,>1
                        e1
                        ~
                        e1
                        ~
                        e1
                        ~
                        e1
                        ~
                        <g, e>1
                        ~
                        <g, e>1
                        ~
                        <g, e>1
                        ~
                        <g, e>1
                        ~
                        <g, e>1
                        ~
                        <g, e>1
                        c,1
                        ~
                        c,1
                        ~
                        c,1
                        ~
                        c,1
                        ~
                        c,1
                        ~
                        c,1
                        ~
                        <c, fs,>1
                        ~
                        <c, fs,>1
                        ~
                        <c, fs,>1
                        ~
                        <c, fs,>1
                        ~
                        <c, fs,>1
                        ~
                        <c, fs,>1
                        ~
                        <c, fs,>1
                        ~
                        <c, fs,>1
                        ~
                        <c, fs,>1
                        ~
                        <c, fs,>1
                        ~
                        <c, fs,>1
                        ~
                        <c, fs,>1
                        ~
                        {
                            \time 5/8
                            r4
                            r4.
                        }
                        r4
                        <c, fs,>4.
                        ~
                        -.
                        r4
                        c,4.
                        ~
                        -.
                        r4
                        <c ef>4.
                        ~
                        -.
                        r4
                        c,4.
                        ~
                        -.
                        r4
                        c4.
                        ~
                        -.
                        r4
                        <c, fs, a, ef>4.
                        ~
                        -.
                        r4
                        <a, c ef>4.
                        ~
                        -.
                        r4
                        <c, fs, a,>4.
                        ~
                        -.
                        r4
                        <c, fs,>4.
                        ~
                        -.
                        r4
                        <c ef>4.
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