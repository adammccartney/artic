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
                    \mark #2
                    r1
                    r2
                    b'2
                    ~
                    b'1
                    ~
                    b'2
                    d''2
                    ~
                    d''1
                    ~
                    d''1
                    ~
                    d''2
                    ~
                    a''2
                    ~
                    a''1
                    ~
                    a''4
                    fs''2.
                    ~
                    fs''1
                    r1
                    r4
                    g'2.
                    ~
                    g'8
                    r8
                    g''2
                    b'4
                    cs''1
                    e''1
                    b'2
                    ~
                    d''2
                    ~
                    d''4
                    ~
                    e''2.
                    --
                    g''1
                    ~
                    g''2
                    r2
                    r4
                    d''4
                    --
                    e''2
                    ~
                    e''1
                    r2
                    cs'''2
                    ~
                    cs'''1
                    ~
                    cs'''2
                    fs''2
                    ~
                    fs''1
                    ~
                    fs''1
                    ~
                    fs''2
                    ~
                    ds'''2
                    ~
                    ds'''1
                    ~
                    ds'''4
                    as''2.
                    ~
                    as''1
                    r1
                    r1
                    r1
                    r4
                    a'4
                    --
                    a'2
                    b'4
                    --
                    b'4
                    b'2
                    a'4
                    --
                    a'2
                    b'4
                    --
                    b'4
                    b'2
                    e''4
                    --
                    e''2
                    d''4
                    --
                    d''4
                    d''2
                    e''4
                    --
                    e''2
                    b'4
                    --
                    b'4
                    b'4
                    ~
                    b'4
                    e''4
                    --
                    e''2
                    ~
                    e''1
                    ~
                    e''1
                    ~
                    e''1
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
                    \mark #2
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
                    b4
                    cs'1
                    e1
                    :32
                    \clef "treble"
                    b2
                    :32
                    <b d'>2
                    :32
                    ~
                    <b d'>4
                    :32
                    ~
                    <b d' e'>2.
                    :32
                    ~
                    <b d' e' g'>1
                    :32
                    ~
                    <b d' e' g'>2.
                    :32
                    r4
                    d'2
                    :32
                    ~
                    <d' e'>2
                    :32
                    ~
                    <d' e'>4
                    :32
                    ~
                    <d' e' g'>2.
                    :32
                    ~
                    <d' e' g' b'>1
                    :32
                    ~
                    <d' e' g' b'>2.
                    :32
                    r4
                    r1
                    r1
                    r1
                    r1
                    r1
                    r1
                    \clef "bass"
                    <ds as>1
                    :32
                    ~
                    <ds as>1
                    :32
                    ~
                    <ds as>1
                    :32
                    ~
                    <ds as>1
                    :32
                    ~
                    <ds as>1
                    :32
                    r1
                    r1
                    \clef "treble"
                    <cs' a'>1
                    :32
                    ~
                    <cs' a'>1
                    :32
                    ~
                    <cs' a'>1
                    :32
                    ~
                    <cs' a'>1
                    :32
                    ~
                    <cs' a'>1
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
                    \context Voice = "RH_I_Music_Voice"                        %! artic.ScoreTemplate.__call__()
                    {                                                          %! artic.ScoreTemplate.__call__()
                        \clef "bass"
                        \clef "treble"
                        \mark #2
                        e2
                        ~
                        <e g>2
                        ~
                        <e g>4
                        ~
                        <e g b>2.
                        ~
                        <e g b d'>1
                        ~
                        <e g b d'>2.
                        r4
                        b2
                        ~
                        <b d'>2
                        ~
                        <b d'>4
                        ~
                        <b d' e'>2.
                        ~
                        <b d' e' g'>1
                        ~
                        <b d' e' g'>2.
                        r4
                        d'2
                        ~
                        <d' e'>2
                        ~
                        <d' e'>4
                        ~
                        <d' e' g'>2.
                        ~
                        <d' e' g' b'>1
                        ~
                        <d' e' g' b'>2.
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
                        r2
                        \clef "bass"
                        cs2
                        ~
                        <fs, cs>2.
                        ~
                        <fs, as, cs>4
                        ~
                        <fs, as, cs>2
                        ~
                        <fs, as, cs ds>2
                        ~
                        <fs, as, cs ds>1
                        ~
                        <as, cs ds fs>1
                        ~
                        <as, cs ds fs>2
                        ~
                        <as, cs ds>2
                        ~
                        <as, cs ds>1
                        ~
                        <as, cs ds>4
                        ~
                        <as, ds>2.
                        ~
                        ds1
                        r1
                        r1
                        <ds as>1
                        ~
                        <ds as>1
                        ~
                        <ds as>1
                        ~
                        <ds as>1
                        ~
                        <ds as>1
                        r1
                        r1
                        \clef "treble"
                        <cs' a'>1
                        ~
                        <cs' a'>1
                        ~
                        <cs' a'>1
                        ~
                        <cs' a'>1
                        ~
                        <cs' a'>1
                        \bar "||"
                    }                                                          %! artic.ScoreTemplate.__call__()
                    \context Voice = "RH_I_Dynamics_Voice"                     %! artic.ScoreTemplate.__call__()
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
                        \pp
                        s1 * 1/1
                        \>
                        s1 * 1/1
                        s1 * 1/1
                        s1 * 1/1
                        _ #(make-dynamic-script (markup #:whiteout #:normal-text #:italic "niente"))
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
                        s1 * 1/1
                        s1 * 1/1
                        s1 * 1/1
                        s1 * 1/1
                        s1 * 1/1
                        s1 * 1/1
                        s1 * 1/1
                        s1 * 1/1
                        s1 * 1/1
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
                        \mark #2
                        r1
                        r2
                        b,2
                        ~
                        <b, d>2.
                        ~
                        <b, d fs>4
                        ~
                        <b, d fs>2
                        ~
                        <b, d fs a>2
                        ~
                        <b, d fs a>1
                        ~
                        <d a b>1
                        ~
                        <d a b>2
                        ~
                        <d fs a b>2
                        ~
                        <d fs a b>1
                        ~
                        <d fs a b>4
                        ~
                        <a b>2.
                        ~
                        b1
                        ~
                        b1
                        ~
                        b1
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
                    \context Voice = "LH_I_Dynamics_Voice"                     %! artic.ScoreTemplate.__call__()
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
            >>                                                                 %! artic.ScoreTemplate.__call__()
        >>                                                                     %! artic.ScoreTemplate.__call__()
    >>                                                                         %! artic.ScoreTemplate.__call__()
