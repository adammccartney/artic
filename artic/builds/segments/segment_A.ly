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
                    \override TextScript.staff-padding = 3.5
                    \override TextSpanner.staff-padding = 4.25
                    s1 * 3/4
                    \stopTextSpan
                    - \abjad-invisible-line
                    - \tweak bound-details.left.text \markup {
                        \concat
                            {
                                \upright
                                    \center-column
                                        {
                                            flaut.-
                                            pont.
                                        }
                                \hspace
                                    #0.5
                            }
                        }
                    \startTextSpan
                    s1 * 1/4
                    \override TextScript.staff-padding = 2.5
                    \override TextSpanner.staff-padding = 3.25
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
                    s1 * 1/2
                    s1 * 1/1
                    s1 * 1/2
                    s1 * 1/2
                    s1 * 1/1
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
                    s1 * 1/4
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
                    \override TextScript.staff-padding = 1.5
                    \override TextSpanner.staff-padding = 2.25
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
                    s1 * 1/1
                    \stopTextSpan
                }                                                              %! artic.ScoreTemplate.__call__()
                \context Voice = "Violin_Music_Voice"                          %! artic.ScoreTemplate.__call__()
                {                                                              %! artic.ScoreTemplate.__call__()
                    \clef "treble"
                    \mark #1
                    r1
                    r2
                    d''2
                    ~
                    d''1
                    ~
                    d''2
                    bf'2
                    ~
                    bf'1
                    ~
                    bf'1
                    ~
                    bf'2
                    ~
                    f''2
                    ~
                    f''1
                    ~
                    f''4
                    g''2.
                    ~
                    g''1
                    r1
                    r4
                    g'2.
                    ~
                    g'8
                    r8
                    g''2
                    bf'4
                    b'1
                    ef'1
                    c''2
                    ~
                    bf'2
                    ~
                    bf'4
                    ~
                    g''2.
                    ~
                    ef''1
                    ~
                    ef''2.
                    :32
                    r4
                    ef''2
                    ~
                    c''2
                    ~
                    c''1
                    r2
                    a''2
                    ~
                    a''1
                    ~
                    a''2
                    ef''2
                    ~
                    ef''1
                    ~
                    ef''1
                    ~
                    ef''2
                    ~
                    d'''2
                    ~
                    d'''1
                    ~
                    d'''4
                    fs''2.
                    ~
                    fs''1
                    r1
                    r1
                    r1
                    r4
                    a'4
                    --
                    a'2
                    bf'4
                    --
                    bf'4
                    bf'2
                    a'4
                    --
                    a'2
                    bf'4
                    --
                    bf'4
                    bf'2
                    a'4
                    --
                    a'2
                    bf'4
                    --
                    bf'4
                    bf'2
                    c''4
                    --
                    c''2
                    bf'4
                    --
                    bf'4
                    bf'4
                    ~
                    bf'4
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
                    \>
                    s1 * 3/4
                    s1 * 1/1
                    s1 * 3/4
                    \ppp
                    s1 * 1/4
                    s1 * 1/2
                    s1 * 1/2
                    s1 * 1/1
                    \override DynamicLineSpanner.staff-padding = 2.5
                    s1 * 1/2
                    _ #(make-dynamic-script (markup #:whiteout #:normal-text #:italic "niente"))
                    s1 * 1/2
                    \<
                    s1 * 1/1
                    s1 * 1/2
                    \pp
                    s1 * 1/2
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
                    s1 * 1/4
                    \pp
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
                    s1 * 1/2
                    \>
                    s1 * 1/1
                    s1 * 1/1
                    s1 * 1/1
                    _ #(make-dynamic-script (markup #:whiteout #:normal-text #:italic "niente"))
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
                    \mark #1
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
                    g2.
                    ~
                    g8
                    r8
                    g'2
                    bf4
                    b1
                    \clef "treble"
                    ef'1
                    :32
                    c'2
                    :32
                    ~
                    <bf c'>2
                    :32
                    ~
                    <bf c'>4
                    :32
                    ~
                    <bf c' g'>2.
                    :32
                    ~
                    <bf c' ef' g'>1
                    :32
                    ~
                    <bf c' ef' g'>2.
                    :32
                    r4
                    ef'2
                    :32
                    ~
                    <c' ef'>2
                    :32
                    ~
                    <c' ef'>4
                    :32
                    ~
                    <c' ef' bf'>2.
                    :32
                    ~
                    <c' ef' g' bf'>1
                    :32
                    ~
                    <c' ef' g' bf'>2.
                    :32
                    r4
                    r1
                    r1
                    r1
                    r1
                    r1
                    r1
                    \clef "bass"
                    <d a>1
                    :32
                    ~
                    <d a>1
                    :32
                    ~
                    <d a>1
                    :32
                    ~
                    <d a>1
                    :32
                    ~
                    <d a>1
                    :32
                    r1
                    r1
                    <a e'>1
                    :32
                    ~
                    <a e'>1
                    :32
                    ~
                    <a e'>1
                    :32
                    ~
                    <a e'>1
                    :32
                    ~
                    <a e'>1
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
                        s1 * 1/1
                        s1 * 1/1
                        s1 * 1/1
                        s1 * 1/1
                        s1 * 1/1
                        s1 * 1/1
                        s1 * 1/1
                        s1 * 1/1
                        s1 * 1/1
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
                        \clef "treble"
                        \mark #1
                        r1
                        r2
                        d'''2
                        ~
                        <bf'' d'''>2.
                        ~
                        <bf'' d''' g'''>4
                        ~
                        <bf'' d''' g'''>2
                        ~
                        <bf'' d''' f''' g'''>2
                        ~
                        <bf'' d''' f''' g'''>1
                        ~
                        <d''' g''' bf'''>1
                        ~
                        <d''' g''' bf'''>2
                        ~
                        <d''' f''' g''' bf'''>2
                        ~
                        <d''' f''' g''' bf'''>1
                        ~
                        <d''' f''' g''' bf'''>4
                        ~
                        <g''' bf'''>2.
                        ~
                        bf'''1
                        ~
                        bf'''1
                        ~
                        bf'''1
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
                        r1
                        r1
                        r1
                    }                                                          %! artic.ScoreTemplate.__call__()
                    \context Voice = "RH_I_Dynamics_Voice"                     %! artic.ScoreTemplate.__call__()
                    {                                                          %! artic.ScoreTemplate.__call__()
                        \override DynamicLineSpanner.staff-padding = 2.5
                        s1 * 1/1
                        \ppp
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
                        s1 * 1/1
                        s1 * 1/1
                        s1 * 1/1
                        s1 * 1/1
                        s1 * 1/1
                        s1 * 1/1
                        s1 * 1/1
                        s1 * 1/1
                        s1 * 1/1
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
                        \stopTextSpan
                    }                                                          %! artic.ScoreTemplate.__call__()
                    \context Voice = "LH_I_Music_Voice"                        %! artic.ScoreTemplate.__call__()
                    {                                                          %! artic.ScoreTemplate.__call__()
                        \clef "bass"
                        \mark #1
                        g2
                        ~
                        <ef g>2
                        ~
                        <ef g>4
                        ~
                        <ef g c'>2.
                        ~
                        <ef g bf c'>1
                        ~
                        <ef g bf c'>2.
                        r4
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
                        a,2
                        ~
                        <ef, a,>2.
                        ~
                        <ef, fs, a,>4
                        ~
                        <ef, fs, a,>2
                        ~
                        <ef, fs, a, d>2
                        ~
                        <ef, fs, a, d>1
                        ~
                        <fs, a, d ef>1
                        ~
                        <fs, a, d ef>2
                        ~
                        <fs, a, d>2
                        ~
                        <fs, a, d>1
                        ~
                        <fs, a, d>4
                        ~
                        <fs, d>2.
                        ~
                        d1
                        r1
                        r1
                        <d a>1
                        ~
                        <d a>1
                        ~
                        <d a>1
                        ~
                        <d a>1
                        ~
                        <d a>1
                        r1
                        r1
                        <a e'>1
                        ~
                        <a e'>1
                        ~
                        <a e'>1
                        ~
                        <a e'>1
                        ~
                        <a e'>1
                        \bar "||"
                    }                                                          %! artic.ScoreTemplate.__call__()
                    \context Voice = "LH_I_Dynamics_Voice"                     %! artic.ScoreTemplate.__call__()
                    {                                                          %! artic.ScoreTemplate.__call__()
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
                        \pp
                        s1 * 1/1
                        \>
                        s1 * 1/1
                        s1 * 1/1
                        s1 * 1/1
                        _ #(make-dynamic-script (markup #:whiteout #:normal-text #:italic "niente"))
                    }                                                          %! artic.ScoreTemplate.__call__()
                >>                                                             %! artic.ScoreTemplate.__call__()
            >>                                                                 %! artic.ScoreTemplate.__call__()
        >>                                                                     %! artic.ScoreTemplate.__call__()
    >>                                                                         %! artic.ScoreTemplate.__call__()
