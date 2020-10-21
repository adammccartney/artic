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
                    s1 * 1/1
                    s1 * 1/2
                    \override TextScript.staff-padding = 1.5
                    \override TextSpanner.staff-padding = 2.25
                    s1 * 1/2
                    - \abjad-invisible-line
                    - \tweak bound-details.left.text \markup {
                        \concat
                            {
                                \upright
                                    "sul pont."
                                \hspace
                                    #0.5
                            }
                        }
                    \startTextSpan
                    s1 * 1/1
                    s1 * 1/2
                    \override TextScript.staff-padding = 1.5
                    \override TextSpanner.staff-padding = 2.25
                    s1 * 1/2
                    \stopTextSpan
                    - \abjad-invisible-line
                    - \tweak bound-details.left.text \markup {
                        \concat
                            {
                                \upright
                                    ord.
                                \hspace
                                    #0.5
                            }
                        }
                    \startTextSpan
                    s1 * 1/1
                    s1 * 1/1
                    s1 * 1/2
                    s1 * 1/2
                    s1 * 1/1
                    s1 * 1/4
                    \override TextScript.staff-padding = 3.5
                    \override TextSpanner.staff-padding = 4.25
                    s1 * 3/4
                    \stopTextSpan
                    - \abjad-invisible-line
                    - \tweak bound-details.left.text \markup {
                        \concat
                            {
                                \upright
                                    "sul pont."
                                \hspace
                                    #0.5
                            }
                        }
                    \startTextSpan
                    s1 * 1/1
                    s1 * 1/1
                    s1 * 1/4
                    \override TextScript.staff-padding = 1.5
                    \override TextSpanner.staff-padding = 2.25
                    s1 * 3/4
                    \stopTextSpan
                    - \abjad-invisible-line
                    - \tweak bound-details.left.text \markup {
                        \concat
                            {
                                \upright
                                    ord.
                                \hspace
                                    #0.5
                            }
                        }
                    \startTextSpan
                    s1 * 1/8
                    s1 * 1/8
                    s1 * 1/2
                    s1 * 1/4
                    s1 * 1/1
                    s1 * 1/1
                    s1 * 1/2
                    s1 * 1/2
                    s1 * 1/4
                    s1 * 3/4
                    s1 * 1/1
                    s1 * 1/2
                    s1 * 1/2
                    s1 * 1/4
                    s1 * 1/4
                    s1 * 1/2
                    s1 * 1/1
                    s1 * 1/2
                    s1 * 1/2
                    s1 * 1/1
                    s1 * 1/2
                    \override TextScript.staff-padding = 3.5
                    \override TextSpanner.staff-padding = 4.25
                    s1 * 1/2
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
                    s1 * 1/2
                    s1 * 1/2
                    s1 * 1/1
                    s1 * 1/4
                    s1 * 3/4
                    s1 * 1/1
                    s1 * 1/1
                    s1 * 1/1
                    s1 * 1/1
                    \override TextScript.staff-padding = 3.5
                    \override TextSpanner.staff-padding = 4.25
                    s1 * 1/4
                    \stopTextSpan
                    - \abjad-invisible-line
                    - \tweak bound-details.left.text \markup {
                        \concat
                            {
                                \upright
                                    ord.
                                \hspace
                                    #0.5
                            }
                        }
                    \startTextSpan
                    s1 * 1/4
                    s1 * 1/2
                    s1 * 1/4
                    s1 * 1/4
                    s1 * 1/2
                    s1 * 1/4
                    s1 * 1/2
                    s1 * 1/4
                    s1 * 1/4
                    s1 * 1/2
                    s1 * 1/4
                    s1 * 1/2
                    s1 * 1/4
                    s1 * 1/4
                    s1 * 1/2
                    s1 * 1/4
                    s1 * 1/2
                    s1 * 1/4
                    s1 * 1/4
                    s1 * 1/4
                    s1 * 1/4
                    \override TextScript.staff-padding = 1.5
                    \override TextSpanner.staff-padding = 2.25
                    s1 * 1/4
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
                    s1 * 1/2
                    s1 * 1/1
                    s1 * 1/1
                    s1 * 1/1
                    \stopTextSpan
                }                                                              %! artic.ScoreTemplate.__call__()
                \context Voice = "Violin_Music_Voice"                          %! artic.ScoreTemplate.__call__()
                {                                                              %! artic.ScoreTemplate.__call__()
                    \clef "treble"
                    \mark \default
                    r1
                    r2
                    c''2
                    ~
                    c''1
                    ~
                    c''2
                    gs'2
                    ~
                    gs'1
                    ~
                    gs'1
                    ~
                    gs'2
                    ~
                    ds''2
                    ~
                    ds''1
                    ~
                    ds''4
                    fss''2.
                    ~
                    fss''1
                    r1
                    r4
                    b'2.
                    ~
                    b'8
                    r8
                    b''2
                    d''4
                    e''1
                    g''1
                    a'2
                    ~
                    fs'2
                    ~
                    fs'4
                    ~
                    ef''2.
                    --
                    d''1
                    ~
                    d''2
                    r2
                    r4
                    d''4
                    --
                    a'2
                    ~
                    a'1
                    r2
                    ds'''2
                    ~
                    ds'''1
                    ~
                    ds'''2
                    gs''2
                    ~
                    gs''1
                    ~
                    gs''1
                    ~
                    gs''2
                    ~
                    fss'''2
                    ~
                    fss'''1
                    ~
                    fss'''4
                    c'''2.
                    ~
                    c'''1
                    r1
                    r1
                    r1
                    r4
                    d''4
                    --
                    d''2
                    ef''4
                    --
                    ef''4
                    ef''2
                    d''4
                    --
                    d''2
                    ef'4
                    --
                    ef'4
                    ef'2
                    a'4
                    --
                    a'2
                    g'4
                    --
                    g'4
                    g'2
                    a'4
                    --
                    a'2
                    ef'4
                    --
                    ef'4
                    ef'4
                    ~
                    ef'4
                    a'4
                    --
                    a'2
                    ~
                    a'1
                    ~
                    a'1
                    ~
                    a'1
                    \bar "||"
                }                                                              %! artic.ScoreTemplate.__call__()
                \context Voice = "Violin_Dynamics_Voice"                       %! artic.ScoreTemplate.__call__()
                {                                                              %! artic.ScoreTemplate.__call__()
                    s1 * 1/1
                    s1 * 1/2
                    \override DynamicLineSpanner.staff-padding = 2.5
                    s1 * 1/2
                    \ppp
                    s1 * 1/1
                    \<
                    s1 * 1/2
                    \override DynamicLineSpanner.staff-padding = 2.5
                    s1 * 1/2
                    \p
                    s1 * 1/1
                    s1 * 1/1
                    s1 * 1/2
                    s1 * 1/2
                    s1 * 1/1
                    \>
                    s1 * 1/4
                    s1 * 3/4
                    s1 * 1/1
                    \ppp
                    s1 * 1/1
                    s1 * 1/4
                    s1 * 3/4
                    \pp
                    s1 * 1/8
                    s1 * 1/8
                    s1 * 1/2
                    s1 * 1/4
                    s1 * 1/1
                    s1 * 1/1
                    s1 * 1/2
                    s1 * 1/2
                    s1 * 1/4
                    s1 * 3/4
                    s1 * 1/1
                    s1 * 1/2
                    s1 * 1/2
                    s1 * 1/4
                    s1 * 1/4
                    s1 * 1/2
                    s1 * 1/1
                    \override DynamicLineSpanner.staff-padding = 2.5
                    s1 * 1/2
                    _ #(make-dynamic-script (markup #:whiteout #:normal-text #:italic "niente"))
                    s1 * 1/2
                    \<
                    s1 * 1/1
                    s1 * 1/2
                    s1 * 1/2
                    \pp
                    s1 * 1/1
                    s1 * 1/1
                    s1 * 1/2
                    s1 * 1/2
                    s1 * 1/1
                    s1 * 1/4
                    \>
                    s1 * 3/4
                    s1 * 1/1
                    s1 * 1/1
                    _ #(make-dynamic-script (markup #:whiteout #:normal-text #:italic "niente"))
                    s1 * 1/1
                    s1 * 1/1
                    s1 * 1/4
                    \pp
                    s1 * 1/4
                    s1 * 1/2
                    s1 * 1/4
                    s1 * 1/4
                    s1 * 1/2
                    s1 * 1/4
                    s1 * 1/2
                    s1 * 1/4
                    s1 * 1/4
                    s1 * 1/2
                    s1 * 1/4
                    s1 * 1/2
                    s1 * 1/4
                    s1 * 1/4
                    s1 * 1/2
                    s1 * 1/4
                    s1 * 1/2
                    s1 * 1/4
                    s1 * 1/4
                    s1 * 1/4
                    s1 * 1/4
                    s1 * 1/4
                    \>
                    s1 * 1/2
                    s1 * 1/1
                    s1 * 1/1
                    _ #(make-dynamic-script (markup #:whiteout #:normal-text #:italic "niente"))
                    s1 * 1/1
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
                    s1 * 1/1
                    s1 * 1/1
                    s1 * 1/1
                    s1 * 1/1
                    s1 * 1/1
                    s1 * 1/1
                    s1 * 1/1
                    s1 * 1/1
                    s1 * 1/4
                    s1 * 3/4
                    s1 * 1/8
                    s1 * 1/8
                    s1 * 1/2
                    s1 * 1/4
                    s1 * 1/1
                    \override TextScript.staff-padding = 1.5
                    \override TextSpanner.staff-padding = 2.25
                    s1 * 1/1
                    - \abjad-invisible-line
                    - \tweak bound-details.left.text \markup {
                        \concat
                            {
                                \upright
                                    \bold
                                        MX.
                                \hspace
                                    #0.5
                            }
                        }
                    \startTextSpan
                    s1 * 1/2
                    s1 * 1/2
                    s1 * 1/4
                    s1 * 3/4
                    s1 * 1/1
                    s1 * 3/4
                    s1 * 1/4
                    s1 * 1/2
                    s1 * 1/2
                    s1 * 1/4
                    s1 * 3/4
                    s1 * 1/1
                    s1 * 3/4
                    s1 * 1/4
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
                    \stopTextSpan
                }                                                              %! artic.ScoreTemplate.__call__()
                \context Voice = "Monosynth_Music_Voice"                       %! artic.ScoreTemplate.__call__()
                {                                                              %! artic.ScoreTemplate.__call__()
                    \clef "treble"
                    \mark \default
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
                    r4
                    \clef "bass"
                    b2.
                    ~
                    b8
                    r8
                    b'2
                    d'4
                    e'1
                    \clef "treble"
                    g1
                    :32
                    a2
                    :32
                    ~
                    <fs a>2
                    :32
                    ~
                    <fs a>4
                    :32
                    ~
                    <fs a ef'>2.
                    :32
                    ~
                    <fs a d' ef'>1
                    :32
                    ~
                    <fs a d' ef'>2.
                    :32
                    r4
                    d'2
                    :32
                    ~
                    <a d'>2
                    :32
                    ~
                    <a d'>4
                    :32
                    ~
                    <a d' fs'>2.
                    :32
                    ~
                    <a d' ef' fs'>1
                    :32
                    ~
                    <a d' ef' fs'>2.
                    :32
                    r4
                    r1
                    r1
                    r1
                    r1
                    r1
                    r1
                    \clef "bass"
                    <fss css'>1
                    :32
                    ~
                    <fss css'>1
                    :32
                    ~
                    <fss css'>1
                    :32
                    ~
                    <fss css'>1
                    :32
                    ~
                    <fss css'>1
                    :32
                    r1
                    r1
                    <ds' as'>1
                    :32
                    ~
                    <ds' as'>1
                    :32
                    ~
                    <ds' as'>1
                    :32
                    ~
                    <ds' as'>1
                    :32
                    ~
                    <ds' as'>1
                    :32
                    r1
                    r1
                    r1
                }                                                              %! artic.ScoreTemplate.__call__()
                \context Voice = "Monosynth_Dynamics_Voice"                    %! artic.ScoreTemplate.__call__()
                {                                                              %! artic.ScoreTemplate.__call__()
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
                    s1 * 3/4
                    \ppp
                    s1 * 1/8
                    s1 * 1/8
                    s1 * 1/2
                    s1 * 1/4
                    s1 * 1/1
                    s1 * 1/1
                    \>
                    s1 * 1/2
                    s1 * 1/2
                    \<
                    s1 * 1/4
                    s1 * 3/4
                    s1 * 1/1
                    \>
                    s1 * 3/4
                    \ppp
                    s1 * 1/4
                    s1 * 1/2
                    \<
                    s1 * 1/2
                    s1 * 1/4
                    s1 * 3/4
                    \>
                    s1 * 1/1
                    s1 * 3/4
                    _ #(make-dynamic-script (markup #:whiteout #:normal-text #:italic "niente"))
                    s1 * 1/4
                    s1 * 1/1
                    s1 * 1/1
                    s1 * 1/1
                    s1 * 1/1
                    s1 * 1/1
                    s1 * 1/1
                    s1 * 1/1
                    _ #(make-dynamic-script (markup #:whiteout #:normal-text #:italic "niente"))
                    s1 * 1/1
                    \<
                    s1 * 1/1
                    s1 * 1/1
                    \>
                    s1 * 1/1
                    s1 * 1/1
                    _ #(make-dynamic-script (markup #:whiteout #:normal-text #:italic "niente"))
                    s1 * 1/1
                    s1 * 1/1
                    _ #(make-dynamic-script (markup #:whiteout #:normal-text #:italic "niente"))
                    s1 * 1/1
                    \<
                    s1 * 1/1
                    \override DynamicLineSpanner.staff-padding = 3.5
                    s1 * 1/1
                    \>
                    s1 * 1/1
                    s1 * 1/1
                    _ #(make-dynamic-script (markup #:whiteout #:normal-text #:italic "niente"))
                    s1 * 1/1
                    s1 * 1/1
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
                        s1 * 1/2
                        s1 * 1/2
                        s1 * 1/4
                        s1 * 3/4
                        s1 * 1/1
                        s1 * 3/4
                        s1 * 1/4
                        s1 * 1/2
                        s1 * 1/2
                        s1 * 1/4
                        s1 * 3/4
                        s1 * 1/1
                        s1 * 3/4
                        s1 * 1/4
                        s1 * 1/2
                        s1 * 1/2
                        s1 * 1/4
                        s1 * 3/4
                        s1 * 1/1
                        s1 * 1/4
                        s1 * 3/4
                        s1 * 1/8
                        s1 * 1/8
                        s1 * 1/2
                        s1 * 1/4
                        s1 * 1/1
                        s1 * 1/1
                        s1 * 1/2
                        s1 * 1/2
                        s1 * 1/4
                        s1 * 3/4
                        s1 * 1/1
                        s1 * 1/2
                        s1 * 1/2
                        s1 * 1/4
                        s1 * 1/4
                        s1 * 1/2
                        s1 * 1/1
                        s1 * 1/2
                        s1 * 1/2
                        s1 * 3/4
                        s1 * 1/4
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
                        \stopTextSpan
                    }                                                          %! artic.ScoreTemplate.__call__()
                    \context Voice = "RH_I_Music_Voice"                        %! artic.ScoreTemplate.__call__()
                    {                                                          %! artic.ScoreTemplate.__call__()
                        \clef "bass"
                        \clef "treble"
                        \mark \default
                        bf''2
                        ~
                        <a'' bf''>2
                        ~
                        <a'' bf''>4
                        ~
                        <a'' bf'' e'''>2.
                        ~
                        <a'' bf'' cs''' e'''>1
                        ~
                        <a'' bf'' cs''' e'''>2.
                        r4
                        a2
                        ~
                        <fs a>2
                        ~
                        <fs a>4
                        ~
                        <fs a ef'>2.
                        ~
                        <fs a d' ef'>1
                        ~
                        <fs a d' ef'>2.
                        r4
                        d'2
                        ~
                        <a d'>2
                        ~
                        <a d'>4
                        ~
                        <a d' fs'>2.
                        ~
                        <a d' ef' fs'>1
                        ~
                        <a d' ef' fs'>4
                        b'2.
                        ~
                        b'8
                        r8
                        b''2
                        d''4
                        e''1
                        g''1
                        a'2
                        ~
                        fs'2
                        ~
                        fs'4
                        ~
                        ef''2.
                        --
                        d''1
                        ~
                        d''2
                        r2
                        r4
                        d''4
                        --
                        a'2
                        ~
                        a'1
                        r2
                        a'''2
                        ~
                        <e''' a'''>2.
                        ~
                        <bf'' e''' a'''>4
                        ~
                        <bf'' e''' a'''>2
                        ~
                        <bf'' cs''' e''' a'''>2
                        ~
                        <bf'' cs''' e''' a'''>1
                        ~
                        r1
                        r1
                        r1
                        r1
                        r1
                        r1
                        r1
                        <fss css'>1
                        ~
                        <fss css'>1
                        ~
                        <fss css'>1
                        ~
                        <fss css'>1
                        ~
                        <fss css'>1
                        r1
                        r1
                        \clef "treble"
                        <ds' as'>1
                        ~
                        <ds' as'>1
                        ~
                        <ds' as'>1
                        ~
                        <ds' as'>1
                        ~
                        <ds' as'>1
                        \bar "||"
                    }                                                          %! artic.ScoreTemplate.__call__()
                    \context Voice = "RH_I_Dynamics_Voice"                     %! artic.ScoreTemplate.__call__()
                    {                                                          %! artic.ScoreTemplate.__call__()
                        \override DynamicLineSpanner.staff-padding = 2.5
                        s1 * 1/2
                        \ppp
                        s1 * 1/2
                        s1 * 1/4
                        s1 * 3/4
                        s1 * 1/1
                        s1 * 3/4
                        s1 * 1/4
                        s1 * 1/2
                        s1 * 1/2
                        s1 * 1/4
                        s1 * 3/4
                        s1 * 1/1
                        s1 * 3/4
                        s1 * 1/4
                        s1 * 1/2
                        s1 * 1/2
                        s1 * 1/4
                        s1 * 3/4
                        s1 * 1/1
                        s1 * 1/4
                        s1 * 3/4
                        s1 * 1/8
                        s1 * 1/8
                        s1 * 1/2
                        s1 * 1/4
                        s1 * 1/1
                        s1 * 1/1
                        s1 * 1/2
                        s1 * 1/2
                        s1 * 1/4
                        s1 * 3/4
                        s1 * 1/1
                        s1 * 1/2
                        s1 * 1/2
                        s1 * 1/4
                        s1 * 1/4
                        s1 * 1/2
                        s1 * 1/1
                        s1 * 1/2
                        s1 * 1/2
                        s1 * 3/4
                        s1 * 1/4
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
                        \!
                    }                                                          %! artic.ScoreTemplate.__call__()
                >>                                                             %! artic.ScoreTemplate.__call__()
                \context Staff = "LH_Polysynth"                                %! artic.ScoreTemplate.__call__()
                <<                                                             %! artic.ScoreTemplate.__call__()
                    \context Voice = "LH_I_Markup_Voice"                       %! artic.ScoreTemplate.__call__()
                    {                                                          %! artic.ScoreTemplate.__call__()
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
                        s1 * 1/1
                        s1 * 1/4
                        s1 * 3/4
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
                        \stopTextSpan
                    }                                                          %! artic.ScoreTemplate.__call__()
                    \context Voice = "LH_I_Music_Voice"                        %! artic.ScoreTemplate.__call__()
                    {                                                          %! artic.ScoreTemplate.__call__()
                        \clef "bass"
                        \mark \default
                        r1
                        r2
                        ef2
                        ~
                        <d ef>2.
                        ~
                        <d ef a>4
                        ~
                        <d ef a>2
                        ~
                        <d ef fs a>2
                        ~
                        <d ef fs a>1
                        ~
                        <cs, f, gs,>1
                        ~
                        <cs, f, gs,>2
                        ~
                        <cs, f, gs, bs,>2
                        ~
                        <cs, f, gs, bs,>1
                        ~
                        <cs, f, gs, bs,>4
                        ~
                        <cs, gs,>2.
                        ~
                        gs,1
                        ~
                        gs,1
                        ~
                        gs,1
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
                        bs,1
                        ~
                        <f, bs,>1
                        ~
                        <f, gs, bs, cs>1
                        ~
                        <f, gs, bs, cs>2
                        ~
                        <f, gs, bs,>2
                        ~
                        <f, gs, bs,>1
                        ~
                        <f, gs, bs,>4
                        ~
                        <f, bs,>2.
                        ~
                        bs,1
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
                    }                                                          %! artic.ScoreTemplate.__call__()
                    \context Voice = "LH_I_Dynamics_Voice"                     %! artic.ScoreTemplate.__call__()
                    {                                                          %! artic.ScoreTemplate.__call__()
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
                        s1 * 1/1
                        \>
                        s1 * 1/4
                        s1 * 3/4
                        s1 * 1/1
                        _ #(make-dynamic-script (markup #:whiteout #:normal-text #:italic "niente"))
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
                        \!
                    }                                                          %! artic.ScoreTemplate.__call__()
                >>                                                             %! artic.ScoreTemplate.__call__()
            >>                                                                 %! artic.ScoreTemplate.__call__()
        >>                                                                     %! artic.ScoreTemplate.__call__()
    >>                                                                         %! artic.ScoreTemplate.__call__()
}                                                                              %! abjad.LilyPondFile._get_formatted_blocks()