import copy
import pathlib

import abjad
import artic

import artic.tools.FuzzyHarmony as FuzzyHarmony

from artic.tools.accents import staccato as stassato
from artic.tools.accents import tenuto as tenuto
from artic.tools.barlines import barline as barline
from artic.tools.clef import clef as clef
from artic.tools.FuzzyHarmony import Diad as Diad
from artic.tools.FuzzyHarmony import LegatoArpeggio as LegatoArpeggio
from artic.tools.material_methods import transpose_segment as transpose_segment
from artic.tools.tremolo import tremolo as tremolo

from abjad import NamedPitch as NamedPitch
from typing import List

#####################
# Setting up segment ### [B] ###
#####################

this_current_directory =  pathlib.Path(__file__).parent 
score = artic.ScoreTemplate()
score_template = score()

segment_maker = artic.SegmentMaker(
                                _lilypond_file=None,
                                _score=score_template,
                                current_directory=this_current_directory,
                                build_path=artic.build_path,
                                segment_name='segment_B',
                                rehearsal_mark=2,
                                tempo=((1, 4), 50),
                                time_signatures=[(4, 4)] * 44,
                                )

#-----------------/________________________
# Pitch Material /  Constants for section /
#_______________/------------------------/

emin7 = artic.tetrads['e_i']
emin7_6 = artic.invert_up(emin7, 1)
emin7_64 = artic.invert_up(emin7, 2)
emin7_42 = artic.invert_up(emin7, 3)

em7 = artic.FuzzyHarmony('e_i', emin7) # emin7
em7_6 = artic.FuzzyHarmony('e_i', emin7_6) 
em7_64 = artic.FuzzyHarmony('e_i', emin7_64)   
em7_42 = artic.FuzzyHarmony('e_i', emin7_42)

# D7(b9, 13)
fsj_65 = artic.tetrads['cs_ii']
fsj_43 = artic.invert_up(fsj_65, 1)
fsj_42 = artic.invert_up(fsj_65, 2)
efmin7 = artic.invert_up(fsj_65, 3)

fs_65 = artic.FuzzyHarmony('cs_ii', fsj_65)
fs_43 = artic.FuzzyHarmony('cs_ii', fsj_43) 
fs_42 = artic.FuzzyHarmony('cs_ii', fsj_42)   
efm7 = artic.FuzzyHarmony('cs_ii', efmin7)

""" 
    Make harmonies and fifth offsets in all octaves
    Note: octave names are in german:
    gross, klein, 
    ein-, zwei-, dreigestr = ein,- zwei-, dreigestrichen
    """

auth_one_ein_zw = [em7, em7_6, em7_64, em7_42]

auth_one_kln_eing = artic.transpose(auth_one_ein_zw, -12)
plag_one_zw_dr = artic.transpose(auth_one_ein_zw, 19)
plag_one_ein_zw = artic.transpose(auth_one_ein_zw, 7)
plag_one_gr = artic.transpose(auth_one_ein_zw, -17)

auth_two_ein_zw = [fs_65, fs_43, fs_42, efm7]

auth_two_gr_kln = artic.transpose(auth_two_ein_zw, -24)
auth_two_kln_eing = artic.transpose(auth_two_ein_zw, -12)
auth_two_zw_dr = artic.transpose(auth_two_ein_zw, 12)

plag_two_ein_zw = artic.transpose(auth_two_ein_zw, 7)
plag_two_zw_dr = artic.transpose(auth_two_ein_zw, 19)


# ----- Diads

fs7_diads_gr_kln = artic.make_diads(auth_two_gr_kln, interval_doubling='d5')
fs7_diads_kln_eing = artic.make_diads(auth_two_kln_eing, interval_doubling='d5')

fs7_fifths_gr_kln = [fs7_diads_gr_kln[0][2], fs7_diads_gr_kln[0][3]]
fs7_fifths_kln_eing = [fs7_diads_kln_eing[0][2], fs7_diads_kln_eing[0][3]]

# -- sequences of notes for arpeggios

seq_one = (0, 1, 2, 3)
seq_two = (3, 2, 0, 1)
seq_three = (2, 0, 1, 3)

#--------------/
#   Violin    /
#____________/

rhythm_definition = segment_maker.define_rhythm()
rhythm_definition.instrument_name = 'Violin'

plag_one_a = plag_one_ein_zw[0].segment
vln_arp_one = LegatoArpeggio(plag_one_a, seq_one)
violin_arp_one = vln_arp_one.pitches

m_seq_a = (0, 1, 2, 3)

# Melody One 

mel_one_a = artic.melody_lookup['em'][1]
mel_one_b = artic.melody_lookup['em'][2]

mel_one_a_oct_down = transpose_segment(mel_one_a, -12)
mel_one_a_oct_up = transpose_segment(mel_one_a, 12)

mel_one_a_arp = LegatoArpeggio(mel_one_a, m_seq_a)
mel_one_a_arp_oct_up = LegatoArpeggio(mel_one_a_oct_up, m_seq_a)
mel_one_a_arp_oct_down = LegatoArpeggio(mel_one_a_oct_down, m_seq_a)

melody_one_a = mel_one_a_arp.pitches
melody_one_a_oct_up = mel_one_a_arp_oct_up.pitches
melody_one_a_oct_down = mel_one_a_arp_oct_down.pitches

auth_one_c = auth_one_ein_zw[2].segment
tr_arp_one = LegatoArpeggio(auth_one_c, seq_one)
violin_arp_two = tr_arp_one.pitches 

auth_one_d = auth_one_ein_zw[3].segment
tr_arp_two = LegatoArpeggio(auth_one_d, seq_one)
violin_arp_three = tr_arp_two.pitches

auth_two_a = auth_two_zw_dr[0].segment
vln_arp_two = LegatoArpeggio(auth_two_a, seq_three)
violin_arp_four = vln_arp_two.pitches

# Melody Two 

mel_two_a = artic.melody_lookup['csm'][2]
mel_two_b = artic.melody_lookup['csm'][3]
mel_two_c = artic.melody_lookup['csm'][4]

mel_two_a_arp = LegatoArpeggio(mel_two_a, m_seq_a)  
mel_two_b_arp = LegatoArpeggio(mel_two_b, m_seq_a)
mel_two_c_arp = LegatoArpeggio(mel_two_c, m_seq_a)

melody_two_a = mel_two_a_arp.pitches
melody_two_b = mel_two_b_arp.pitches
melody_two_c = mel_two_c_arp.pitches

rhythm_definition.notes = [
        ("r1"),
        ("r2"),
        (violin_arp_one[0], abjad.Duration(1, 2), artic.tie()),
        (violin_arp_one[0], abjad.Duration(1), artic.tie()),
        (violin_arp_one[0], abjad.Duration(1, 2)),
        (violin_arp_one[1], abjad.Duration(1, 2), artic.tie()),
        #------------Bar 5
        (violin_arp_one[1], abjad.Duration(1), artic.tie()),
        (violin_arp_one[1], abjad.Duration(1), artic.tie()),
        (violin_arp_one[1], abjad.Duration(1, 2), artic.tie()),
        (violin_arp_one[3], abjad.Duration(1, 2), artic.tie()),
        (violin_arp_one[3], abjad.Duration(1), artic.tie()),
        #------------Bar 9
        (violin_arp_one[3], abjad.Duration(1, 4)),
        (violin_arp_one[2], abjad.Duration(3, 4), artic.tie()),
        (violin_arp_one[2], abjad.Duration(1), ),
        ("r1"),
        ("r4"),
        (melody_one_a[0], abjad.Duration(3, 4), artic.tie()),
        #------------Bar 13
        (melody_one_a[0], abjad.Duration(1, 8)),
        ("r8"),
        (melody_one_a_oct_up[0], abjad.Duration(2, 4)), 
        (melody_one_a[1], abjad.Duration(1,4)), 
        (melody_one_a[3], abjad.Duration(1)), 
        (melody_one_a_oct_up[2], abjad.Duration(1)), 
        (violin_arp_two[0], abjad.Duration(1, 2), artic.tie()),
        (violin_arp_two[1], abjad.Duration(1, 2), artic.tie()),
        #------------Bar 17
        (violin_arp_two[1], abjad.Duration(1, 4), artic.tie()),
        (violin_arp_two[2], abjad.Duration(3, 4), tenuto()),
        (violin_arp_two[3], abjad.Duration(1), artic.tie()),
        (violin_arp_two[3], abjad.Duration(1, 2)), 
        ("r2"),
        ("r4"),
        (violin_arp_three[0], abjad.Duration(1, 4), tenuto()),
        (violin_arp_three[1], abjad.Duration(1, 2), artic.tie()),
        #------------Bar 21
        (violin_arp_three[1], abjad.Duration(1)),
        ("r2"),
        (violin_arp_four[0], abjad.Duration(1, 2), artic.tie()),
        (violin_arp_four[0], abjad.Duration(1), artic.tie()),
        (violin_arp_four[0], abjad.Duration(1, 2)),
        (violin_arp_four[1], abjad.Duration(1, 2), artic.tie()),
        #------------Bar 25
        (violin_arp_four[1], abjad.Duration(1), artic.tie()),
        (violin_arp_four[1], abjad.Duration(1), artic.tie()),
        (violin_arp_four[1], abjad.Duration(1, 2), artic.tie()),
        (violin_arp_four[3], abjad.Duration(1, 2), artic.tie()),
        (violin_arp_four[3], abjad.Duration(1), artic.tie()),
        #------------Bar 29
        (violin_arp_four[3], abjad.Duration(1, 4)),
        (violin_arp_four[2], abjad.Duration(3, 4), artic.tie()),
        (violin_arp_four[2], abjad.Duration(1)),
        ("r1"),
        ("r1"),
        #-----------Bar 33
        ("r1"),
        ("r4"),
        (melody_two_a[2], abjad.Duration(1,4), tenuto()),
        (melody_two_a[2], abjad.Duration(2,4)), 
        (melody_two_b[3], abjad.Duration(1,4), tenuto()),
        (melody_two_b[3], abjad.Duration(1,4)), 
        (melody_two_b[3], abjad.Duration(2,4)), 
        (melody_two_a[2], abjad.Duration(1,4), tenuto()),
        (melody_two_a[2], abjad.Duration(2,4)), 
        (melody_two_c[0], abjad.Duration(1,4), tenuto()),
        #-----------Bar 37
        (melody_two_c[0], abjad.Duration(1,4)), 
        (melody_two_c[0], abjad.Duration(2,4)), 
        (melody_two_a[1], abjad.Duration(1,4), tenuto()),
        (melody_two_a[1], abjad.Duration(2,4)), 
        (melody_two_b[2], abjad.Duration(1,4), tenuto()),
        (melody_two_b[2], abjad.Duration(1,4)), 
        (melody_two_b[2], abjad.Duration(2,4)), 
        (melody_two_a[1], abjad.Duration(1,4), tenuto()),
        (melody_two_a[1], abjad.Duration(2,4)), 
        (melody_two_c[0], abjad.Duration(1,4), tenuto()),
        (melody_two_c[0], abjad.Duration(1,4)),
        (melody_two_c[0], abjad.Duration(1,4), artic.tie()),
        #-----------Bar 41
        (melody_two_c[0], abjad.Duration(1,4)),
        (melody_two_a[1], abjad.Duration(1,4), tenuto()),
        (melody_two_a[1], abjad.Duration(2,4), artic.tie()), 
        (melody_two_a[1], abjad.Duration(1), artic.tie()), 
        (melody_two_a[1], abjad.Duration(1), artic.tie()),
        (melody_two_a[1], abjad.Duration(1), barline("||")),
        ]

rhythm_definition.dynamics = [
        (2, abjad.Dynamic('ppp'), 2.5),
        (3, '<'),
        (5, abjad.Dynamic('p'), 2.5),
        (10, '>'),
        (13, abjad.Dynamic('ppp')),
        (16, abjad.Dynamic('pp')),
        (34, abjad.Dynamic('niente'), 2.5),
        (35, '<'),
        (38, abjad.Dynamic('pp')),
        (44, '>'),
        (47, abjad.Dynamic('niente')),
        (50, abjad.Dynamic('pp')),
        (72, '>'),
        (75, abjad.Dynamic('niente')),
        ]

rhythm_definition.markup = [
        (2, artic.markup.pont(), 1.5),
        (5, artic.markup.ord(), 1.5),
        (12, artic.markup.pont(), 3.5),
        (16, artic.markup.ord(), 1.5),
        (38, artic.markup.flaut(), 3.5),
        (50, artic.markup.ord(), 3.5),
        (72, artic.markup.flaut(), 1.5),
        ]
#-----------------/
#   MonoSynth    /
#_______________/

rhythm_definition = segment_maker.define_rhythm()
rhythm_definition.instrument_name = 'Monosynth'

auth_one_c = auth_one_kln_eing[2].segment
tr_arp_one = LegatoArpeggio(auth_one_c, seq_one)
monosynth_arp_one = tr_arp_one.stages 

auth_one_d = auth_one_kln_eing[3].segment
tr_arp_two = LegatoArpeggio(auth_one_d, seq_one)
monosynth_arp_two = tr_arp_two.stages 

diad_a = Diad(fs7_fifths_gr_kln[1])
diad_one = diad_a.pitch_string

diad_b = Diad(fs7_fifths_kln_eing[0])
diad_two = diad_b.pitch_string

rhythm_definition.notes = [
        ("r1"),
        ("r1"),
        ("r1"),
        ("r1"),
        #------------Bar 5
        ("r1"),
        ("r1"),
        ("r1"),
        ("r1"),
        #------------Bar 9
        ("r1"),
        ("r1"),
        ("r1"),
        ("r4"),
        (melody_one_a_oct_down[0], abjad.Duration(3, 4), artic.tie(), clef('bass')),
        #------------Bar 13
        (melody_one_a_oct_down[0], abjad.Duration(1, 8)),
        ("r8"),
        (melody_one_a[0], abjad.Duration(2, 4)), 
        (melody_one_a_oct_down[1], abjad.Duration(1,4)), 
        (melody_one_a_oct_down[3], abjad.Duration(1)), 
        (melody_one_a_oct_down[2], abjad.Duration(1), tremolo(32)), 
        (monosynth_arp_one[0], abjad.Duration(1, 2), tremolo(32), clef('treble')),
        (monosynth_arp_one[1], abjad.Duration(1, 2), tremolo(32), artic.tie()),
        #------------Bar 17
        (monosynth_arp_one[1], abjad.Duration(1, 4), tremolo(32), artic.tie()),
        (monosynth_arp_one[2], abjad.Duration(3, 4), tremolo(32), artic.tie()),
        (monosynth_arp_one[3], abjad.Duration(1), tremolo(32), artic.tie()),
        (monosynth_arp_one[3], abjad.Duration(3, 4), tremolo(32)), 
        ("r4"),
        (monosynth_arp_two[0], abjad.Duration(1, 2), tremolo(32), artic.tie()),
        (monosynth_arp_two[1], abjad.Duration(1, 2), tremolo(32), artic.tie()),
        #------------Bar 21
        (monosynth_arp_two[1], abjad.Duration(1, 4), tremolo(32), artic.tie()),
        (monosynth_arp_two[2], abjad.Duration(3, 4), tremolo(32), artic.tie()),
        (monosynth_arp_two[3], abjad.Duration(1), tremolo(32), artic.tie()),
        (monosynth_arp_two[3], abjad.Duration(3, 4), tremolo(32)), 
        ("r4"),
        ("r1"),
        #-----------Bar 25
        ("r1"),
        ("r1"),
        ("r1"),
        ("r1"),
        #-----------Bar 29
        ("r1"),
        (diad_one, abjad.Duration(1), tremolo(32), artic.tie(), clef('bass')),
        (diad_one, abjad.Duration(1), tremolo(32), artic.tie()),
        (diad_one, abjad.Duration(1), tremolo(32), artic.tie()),
        #-----------Bar 33
        (diad_one, abjad.Duration(1), tremolo(32), artic.tie()),
        (diad_one, abjad.Duration(1), tremolo(32)),
        ("r1"),
        ("r1"),
        #-----------Bar 37
        (diad_two, abjad.Duration(1), tremolo(32), artic.tie(), clef('treble')),
        (diad_two, abjad.Duration(1), tremolo(32), artic.tie()),
        (diad_two, abjad.Duration(1), tremolo(32), artic.tie()),
        (diad_two, abjad.Duration(1), tremolo(32), artic.tie()),
        #-----------Bar 41
        (diad_two, abjad.Duration(1), tremolo(32)),
        ("r1"),
        ("r1"),
        ("r1"),
        ]

rhythm_definition.dynamics = [
        (12, abjad.Dynamic('ppp')),
        (18, '>'),
        (20, '<'),
        (23, '>'),
        (24, abjad.Dynamic('ppp')),
        (26, '<'),
        (29, '>'),
        (31, abjad.Dynamic('niente')),
        (39, abjad.Dynamic('niente')),
        (40, '<'),
        (42, '>'),
        (44, abjad.Dynamic('niente')),
        (46, abjad.Dynamic('niente')),
        (47, '<'),
        (49, '>', 3.5),
        (51, abjad.Dynamic('niente')),
       ]

rhythm_definition.markup = [
        (18, artic.markup.mx(), 1.5),
        ]


#-------------------PolySynth----------------#

#--------------/
# RH_Voice_I  /
#____________/

rhythm_definition = segment_maker.define_rhythm()
rhythm_definition.instrument_name = 'RH_I'

auth_one_a = auth_one_kln_eing[0].segment
auth_one_a_arp = LegatoArpeggio(auth_one_a, seq_one)
rh_arp_one = auth_one_a_arp.stages

auth_one_c = auth_one_kln_eing[2].segment
auth_one_c_arp= LegatoArpeggio(auth_one_c, seq_one)
rh_arp_one_i = auth_one_c_arp.stages

auth_one_d = auth_one_kln_eing[3].segment
auth_one_d_arp = LegatoArpeggio(auth_one_d, seq_one)
rh_arp_one_b = auth_one_d_arp.stages

auth_two_a = auth_two_gr_kln[0].segment
auth_two_a_arp = LegatoArpeggio(auth_two_a, seq_three)
rh_arp_two = auth_two_a_arp.stages

auth_two_b = auth_two_gr_kln[1].segment
auth_two_b_arp = LegatoArpeggio(auth_two_b, seq_three)
rh_arp_three = auth_two_b_arp.stages

rhythm_definition.notes = [
        (rh_arp_one[0], abjad.Duration(1, 2), artic.tie(), clef('bass')),
        (rh_arp_one[1], abjad.Duration(1, 2), artic.tie()),
        (rh_arp_one[1], abjad.Duration(1, 4), artic.tie()),
        (rh_arp_one[2], abjad.Duration(3, 4), artic.tie()),
        (rh_arp_one[3], abjad.Duration(1), artic.tie()),
        (rh_arp_one[3], abjad.Duration(3, 4)), 
        ("r4"),
        # ------------------------------------------ Bar 5
        (rh_arp_one_i[0], abjad.Duration(1, 2), artic.tie()),
        (rh_arp_one_i[1], abjad.Duration(1, 2), artic.tie()),
        (rh_arp_one_i[1], abjad.Duration(1, 4), artic.tie()),
        (rh_arp_one_i[2], abjad.Duration(3, 4), artic.tie()),
        (rh_arp_one_i[3], abjad.Duration(1), artic.tie()),
        (rh_arp_one_i[3], abjad.Duration(3, 4)), 
        ("r4"),
        #------------Bar 9
        (rh_arp_one_b[0], abjad.Duration(1, 2), artic.tie()),
        (rh_arp_one_b[1], abjad.Duration(1, 2), artic.tie()),
        (rh_arp_one_b[1], abjad.Duration(1, 4), artic.tie()),
        (rh_arp_one_b[2], abjad.Duration(3, 4), artic.tie()),
        (rh_arp_one_b[3], abjad.Duration(1), artic.tie()),
        (rh_arp_one_b[3], abjad.Duration(3, 4)), 
        ("r4"),
    #------------Bar 13
        ("r1"),
        ("r1"),
        ("r1"),
        ("r1"),
        #------------Bar 17
        ("r1"),
        ("r1"),
        ("r1"),       
        ("r1"),
        #------------Bar 21
        ("r1"),
        ("r2"),
        (rh_arp_two[0], abjad.Duration(1, 2), artic.tie(), clef('bass')),
        (rh_arp_two[1], abjad.Duration(3, 4), artic.tie()),
        (rh_arp_two[2], abjad.Duration(1, 4), artic.tie()),
        (rh_arp_two[2], abjad.Duration(2, 4), artic.tie()),
        (rh_arp_two[3], abjad.Duration(2, 4), artic.tie()),
        #------------ Bar 25
        (rh_arp_two[3], abjad.Duration(1), artic.tie()), 
        (rh_arp_three[3], abjad.Duration(1), artic.tie()),
        (rh_arp_three[3], abjad.Duration(1,2), artic.tie()),
        (rh_arp_three[2], abjad.Duration(1,2), artic.tie()),
        (rh_arp_three[2], abjad.Duration(1), artic.tie()),
        #------------Bar 29
        (rh_arp_three[2], abjad.Duration(1, 4), artic.tie()),
        (rh_arp_three[1], abjad.Duration(3, 4), artic.tie()),
        (rh_arp_three[0], abjad.Duration(1)),
        ("r1"),  
        ("r1"),
        #-----------Bar 33
        (diad_one, abjad.Duration(1), artic.tie()),
        (diad_one, abjad.Duration(1), artic.tie()),
        (diad_one, abjad.Duration(1), artic.tie()),
        (diad_one, abjad.Duration(1), artic.tie()),
        #-----------Bar 37
        (diad_one, abjad.Duration(1)),
        ("r1"),
        ("r1"),
        (diad_two, abjad.Duration(1), artic.tie(), clef('treble')),
        #-----------Bar 41
        (diad_two, abjad.Duration(1), artic.tie()),
        (diad_two, abjad.Duration(1), artic.tie()), 
        (diad_two, abjad.Duration(1), artic.tie()),
        (diad_two, abjad.Duration(1), barline("||")),
        ]


rhythm_definition.dynamics = [
        (47, abjad.Dynamic('pp')),
        (48, '>'),
        (51, abjad.Dynamic('niente')),
        ]

rhythm_definition.markup = []

#--------------/
# LH_Voice_I  /
#____________/

rhythm_definition = segment_maker.define_rhythm()
rhythm_definition.instrument_name = 'LH_I'

plag_one_a = plag_one_gr[0].segment
plag_one_a_arp = LegatoArpeggio(plag_one_a, seq_one)
lh_arp_one = plag_one_a_arp.stages

plag_one_b = plag_one_gr[1].segment
plag_one_b_arp = LegatoArpeggio(plag_one_b, seq_two)
lh_arp_two = plag_one_b_arp.stages

rhythm_definition.notes = [
        ("r1"),
        ("r2"),
        (lh_arp_one[0], abjad.Duration(1, 2), artic.tie()),
        (lh_arp_one[1], abjad.Duration(3, 4), artic.tie()),
        (lh_arp_one[2], abjad.Duration(1, 4), artic.tie()),
        (lh_arp_one[2], abjad.Duration(2, 4), artic.tie()),
        (lh_arp_one[3], abjad.Duration(2, 4), artic.tie()),
        (lh_arp_one[3], abjad.Duration(1), artic.tie()), 
        # ------------------------------------------ Bar 6
        (lh_arp_two[2], abjad.Duration(1), artic.tie()),
        (lh_arp_two[2], abjad.Duration(1,2), artic.tie()),
        (lh_arp_two[3], abjad.Duration(1,2), artic.tie()),
        (lh_arp_two[3], abjad.Duration(1), artic.tie()),
        #------------Bar 9
        (lh_arp_two[3], abjad.Duration(1, 4), artic.tie()),
        (lh_arp_two[1], abjad.Duration(3, 4), artic.tie()),
        (lh_arp_two[0], abjad.Duration(1), artic.tie()),
        (lh_arp_two[0], abjad.Duration(1), artic.tie()),
        (lh_arp_two[0], abjad.Duration(1)),
        #------------Bar 13
        ("r1"),
        ("r1"),
        ("r1"),
        ("r1"),
        #------------Bar 17
        ("r1"),
        ("r1"),
        ("r1"),       
        ("r1"),
        #------------Bar 21
        ("r1"),
        ("r1"),
        ("r1"),
        ("r1"),
        #-----------Bar 25
        ("r1"),
        ("r1"),
        ("r1"),
        ("r1"),
        #-----------Bar 29
        ("r1"),
        ("r1"),
        ("r1"),
        ("r1"),
        #-----------Bar 33
        ("r1"),
        ("r1"),
        ("r1"),
        ("r1"),
        #-----------Bar 37
        ("r1"),
        ("r1"),
        ("r1"),
        ("r1"),
        #-----------Bar 41
        ("r1"),
        ("r1"),
        ("r1"),
        ("r1"),
        ]


rhythm_definition.dynamics = [ 
                    (0, abjad.Dynamic('ppp'), 2.5)
                       ]

rhythm_definition.markup = []


#---------Run segment

lilypond_file = segment_maker.run()
