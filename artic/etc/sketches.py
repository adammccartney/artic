# sketches.py

import abjad
from abjadext import rmakers

"""
This is a sketch file 

it attempts to document a few examples from Josiah Oberholzer's 
2015 dissertation on formalized score control using abjad.

Specifically, it is focused on chapter 3: 
    Modeling Time, Rhythm and Meter

"""

#stack = rmakers.stack(
#        rmakers.note(),
#        rmakers.force_rest(
#        abjad.select().logical_ties().get([0], 2),
#        ),
#        )
#divisions = [(4, 8), (3, 8), (4, 8), (3, 8)]
#selection = stack(divisions)
#lilypond_file = abjad.LilyPondFile.rhythm(
#        selection, divisions
#        )
#abjad.show(lilypond_file) # doctest: +SKIP

### SCORE
def make_empty_score():
    staff = abjad.Staff()
    score = abjad.Score()
    score.append(staff)
    abjad.setting(staff).instrument_name = abjad.Markup('Staff')
    return score

### LILYPOND FILE
def make_lilypond_file(score):
    lilypond_file = abjad.LilyPondFile.new([score])
    return lilypond_file

### MUSIC-MAKER
class MusicMaker(object):
    """
    Populates a staff one measure at a time.
    """

    def __init__(self, staff):
        self.staff = staff

    def make_music(self, durations, denominator, divisions, pitches):
        # make rhythm with one tuplet per division
        stack = rmakers.stack(
            rmakers.talea(
                durations,
                denominator,
                extra_counts=None,
            ),
            rmakers.beam(),
        )
        selection = stack(divisions)

#        # attach time signature to first leaf in each tuplet
#        assert len(divisions) == len(selection)
#        for division, tuplet in zip(divisions, selection):
#            time_signature = abjad.TimeSignature(division)
#            leaf = abjad.select(tuplet).leaf(0)
#            abjad.attach(time_signature, leaf)
#
        # apply pitches
        cyclic_tuple = abjad.CyclicTuple(pitches)
        iterator = abjad.iterate(selection).logical_ties(pitched=True)
        iterator = enumerate(iterator)
        for index, logical_tie in iterator:
            pitch = cyclic_tuple[index]
            for old_leaf in logical_tie:
                if isinstance(pitch, int):
                    old_leaf.written_pitch = pitch
                elif isinstance(pitch, list):
                    new_leaf = abjad.Chord(pitch, old_leaf.written_duration)
                    indicators = abjad.inspect(old_leaf).indicators()
                    if indicators != None:
                        for indicator in indicators:
                            abjad.attach(indicator, new_leaf)
                    abjad.mutate(old_leaf).replace(new_leaf)

        # remove trivial 1:1 tuplets
        self.staff.extend(selection)
        command = rmakers.extract_trivial()
        command(selection)

# make music
score = make_empty_score()
staff = score[0]

maker = MusicMaker(staff)

maker.make_music(
    [-3, 3, 4, 3, -3], #durations
    16, #denominator
    [(4, 4), (4, 4), (4, 4), (4, 4)], #divisions
    [2, 4, 5, 7], #pitches
    )

#maker.make_music(
#    [3, 2, 1], 
#    16, 
#    [(3, 16), (1, 4), (5, 16), (3, 8)], 
#    [7, 5, 4, 2], 
#    )
#
score.add_final_bar_line()
lilypond_file = make_lilypond_file(score)
abjad.show(lilypond_file)
