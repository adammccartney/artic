
import copy
import pathlib

import abjad
import artic

import artic.tools.FuzzyHarmony as FuzzyHarmony

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
# Setting up segment ### [G] ###
#####################

this_current_directory =  pathlib.Path(__file__).parent 
score =artic.ScoreTemplate()
score_template = score()

segment_maker = artic.SegmentMaker(
                                _lilypond_file=None,
                                _score=score_template,
                                current_directory=this_current_directory,
                                build_path=artic.build_path,
                                markup_leaves=False,
                                segment_name='G',
                                rehearsal_mark=1,
                                tempo=((1, 4), 50),
                                time_signatures=[(4, 4)] * 44,
                                )

segment_maker.metronome_marks = [
        (0, artic.metronome_marks['50'], 5),
        ]

#-----------------/________________________
# Pitch Material /  Constants for section /
#_______________/------------------------/

cmin7_6 = artic.tetrads['bf_ii']
cmin7_64 = artic.invert_up(cmin7_6, 1)
cmin7_42 = artic.invert_up(cmin7_6, 2)
cmin7 = artic.invert_up(cmin7_6, 3)

cm7_6 = artic.FuzzyHarmony('bf_ii', cmin7_6) # cmin7/e
cm7_64 = artic.FuzzyHarmony('bf_ii', cmin7_64) 
cm7_42 = artic.FuzzyHarmony('bf_ii', cmin7_42)   
cm7 = artic.FuzzyHarmony('bf_ii', cmin7)

# D7(b9, 13)
d7_9 = artic.tetrads['g_v']
d7_6 = artic.invert_up(d7_9, 1)
d7_64 = artic.invert_up(d7_9, 2)
d7 = artic.invert_up(d7_9, 3)

d7_9 = artic.FuzzyHarmony('g_v', d7_9)
d7_6 = artic.FuzzyHarmony('g_v', d7_6) 
d7_64 = artic.FuzzyHarmony('g_v', d7_64)   
d7 = artic.FuzzyHarmony('g_v', d7)

""" 
    Make harmonies and fifth offsets in all octaves
    Note: octave names are in german:
    gross, klein, 
    ein-, zwei-, dreigestr = ein,- zwei-, dreigestrichen
    """

cm7_hrmns_ein_zw = [cm7_6, cm7_64, cm7_42, cm7]

cm7_hrmns_kln_eing = artic.transpose(cm7_hrmns_ein_zw, -12)
gm7_hrmns_ein_zw = artic.transpose(cm7_hrmns_ein_zw, 7)
gm7_hrmns_zw_dr = artic.transpose(cm7_hrmns_ein_zw, 19)



d7_hrmns_ein_zw = [d7_9, d7_6, d7_64, d7]

d7_hrmns_gr_kln = artic.transpose(d7_hrmns_ein_zw, -24)
d7_hrmns_kln_eing = artic.transpose(d7_hrmns_ein_zw, -12)
d7_hrmns_zw_dr = artic.transpose(d7_hrmns_ein_zw, 12)

a7_hrmns_ein_zw = artic.transpose(d7_hrmns_ein_zw, 7)
a7_hrmns_zw_dr = artic.transpose(d7_hrmns_ein_zw, 19)


# ----- Diads

d7_diads_gr_kln = artic.make_diads(d7_hrmns_gr_kln, interval_doubling='d5')
d7_diads_kln_eing = artic.make_diads(d7_hrmns_kln_eing, interval_doubling='d5')

d7_fifths_gr_kln = [d7_diads_gr_kln[0][2], d7_diads_gr_kln[0][3]]
d7_fifths_kln_eing = [d7_diads_kln_eing[0][2], d7_diads_kln_eing[0][3]]

# -- sequences of notes for arpeggios

seq_one = (1, 0, 3, 2)
seq_two = (3, 2, 0, 1)
seq_three = (2, 0, 1, 3)

#--------------/
#   Violin    /
#____________/

rhythm_definition = segment_maker.define_rhythm()
rhythm_definition.instrument_name = 'Violin'

gmin7_6_eingstrn = gm7_hrmns_ein_zw[0].segment
vln_arp_one = LegatoArpeggio(gmin7_6_eingstrn, seq_one)
violin_arp_one = vln_arp_one.pitches

m_seq_a = (0, 1, 2, 3)

# Melody One 

mel_one_a = artic.melody_lookup['bfm'][1]
mel_one_b = artic.melody_lookup['bfm'][2]

mel_one_a_oct_down = transpose_segment(mel_one_a, -12)
mel_one_a_oct_up = transpose_segment(mel_one_a, 12)

mel_one_a_arp = LegatoArpeggio(mel_one_a, m_seq_a)
mel_one_a_arp_oct_up = LegatoArpeggio(mel_one_a_oct_up, m_seq_a)
mel_one_a_arp_oct_down = LegatoArpeggio(mel_one_a_oct_down, m_seq_a)

melody_one_a = mel_one_a_arp.pitches
melody_one_a_oct_up = mel_one_a_arp_oct_up.pitches
melody_one_a_oct_down = mel_one_a_arp_oct_down.pitches

cmin7_42_zwei = cm7_hrmns_ein_zw[2].segment
tr_arp_one = LegatoArpeggio(cmin7_42_zwei, seq_one)
violin_arp_two = tr_arp_one.pitches 

cmin7_zwei = cm7_hrmns_ein_zw[3].segment
tr_arp_two = LegatoArpeggio(cmin7_zwei, seq_one)
violin_arp_three = tr_arp_two.pitches

d7_9_eingstrn = d7_hrmns_zw_dr[0].segment
vln_arp_two = LegatoArpeggio(d7_9_eingstrn, seq_three)
violin_arp_four = vln_arp_two.pitches


# Melody Two 

mel_two_a = artic.melody_lookup['gm'][2]
mel_two_b = artic.melody_lookup['gm'][3]
mel_two_c = artic.melody_lookup['gm'][4]

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
        (melody_one_a_oct_down[2], abjad.Duration(1)), 
        (violin_arp_two[0], abjad.Duration(1, 2), artic.tie()),
        (violin_arp_two[1], abjad.Duration(1, 2), artic.tie()),
        #------------Bar 17
        (violin_arp_two[1], abjad.Duration(1, 4), artic.tie()),
        (violin_arp_two[2], abjad.Duration(3, 4), artic.tie()),
        (violin_arp_two[3], abjad.Duration(1), artic.tie()),
        (violin_arp_two[3], abjad.Duration(3, 4), tremolo(32)), 
        ("r4"),
        (violin_arp_three[0], abjad.Duration(1, 2), artic.tie()),
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
        (melody_two_a[2], abjad.Duration(1,4), tenuto()),
        (melody_two_a[2], abjad.Duration(2,4)), 
        (melody_two_b[3], abjad.Duration(1,4), tenuto()),
        (melody_two_b[3], abjad.Duration(1,4)), 
        (melody_two_b[3], abjad.Duration(2,4)), 
        (melody_two_a[0], abjad.Duration(1,4), tenuto()),
        (melody_two_a[0], abjad.Duration(2,4)), 
        (melody_two_c[0], abjad.Duration(1,4), tenuto()),
        (melody_two_c[0], abjad.Duration(1,4)),
        (melody_two_c[0], abjad.Duration(1,4), artic.tie()),
        #-----------Bar 41
        (melody_two_c[0], abjad.Duration(1,4)),
        (melody_two_a[2], abjad.Duration(1,4), tenuto()),
        (melody_two_a[2], abjad.Duration(2,4), artic.tie()), 
        (melody_two_a[2], abjad.Duration(1), artic.tie()), 
        (melody_two_a[2], abjad.Duration(1), artic.tie()),
        (melody_two_a[2], abjad.Duration(1), barline("||")),
        ]


rhythm_definition.dynamics = [
        (2, abjad.Dynamic('ppp'), 2.5),
        (3, '<'),
        (5, abjad.Dynamic('p'), 2.5),
        (10, '>'),
        (13, abjad.Dynamic('ppp')),
        (16, abjad.Dynamic('pp')),
        (25, '>'),
        (28, abjad.Dynamic('ppp')),
        (33, abjad.Dynamic('niente'), 2.5),
        (34, '<'),
        (36, abjad.Dynamic('pp')),
        (43, '>'),
        (46, abjad.Dynamic('niente')),
        (50, abjad.Dynamic('pp')),
        (72, '>'),
        (75, abjad.Dynamic('niente')),
       ]

rhythm_definition.markup = [
        (2, artic.markup.pont(), 1.5),
        (5, artic.markup.ord(), 1.5),
        (12, artic.markup.pont(), 3.5), 
        (16, artic.markup.ord(), 1.5),
        (28, artic.markup.flaut_pont(), 3.5),
        (30, artic.markup.ord(), 2.5),
        (36, artic.markup.flaut(), 3.5),
        (50, artic.markup.ord(), 3.5),
        (72, artic.markup.flaut(), 1.5),
        ]


#-----------------/
#   MonoSynth    /
#_______________/

rhythm_definition = segment_maker.define_rhythm()
rhythm_definition.instrument_name = 'Monosynth'

cmin7_42_eing = cm7_hrmns_kln_eing[2].segment
tr_arp_one = LegatoArpeggio(cmin7_42_eing, seq_one)
monosynth_arp_one = tr_arp_one.stages 

cmin7_kln = cm7_hrmns_kln_eing[3].segment
tr_arp_two = LegatoArpeggio(cmin7_kln, seq_one)
monosynth_arp_two = tr_arp_two.stages 

diad_DA = Diad(d7_fifths_gr_kln[1])
diad_one = diad_DA.pitch_string

diad_AE = Diad(d7_fifths_kln_eing[0])
diad_two = diad_AE.pitch_string

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
        (melody_one_a_oct_down[2], abjad.Duration(1), tremolo(32), clef('treble')), 
        (monosynth_arp_one[0], abjad.Duration(1, 2), tremolo(32), artic.tie()),
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
        (diad_two, abjad.Duration(1), tremolo(32), artic.tie()),
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
# RH_I  /
#____________/

rhythm_definition = segment_maker.define_rhythm()
rhythm_definition.instrument_name = 'RH_I'

gmin7_6_zwgstrn = gm7_hrmns_zw_dr[0].segment
gmin7_6_arp = LegatoArpeggio(gmin7_6_zwgstrn, seq_one)
rh_arp_one = gmin7_6_arp.stages

gmin7_64 = gm7_hrmns_zw_dr[1].segment
gmin7_64_arp = LegatoArpeggio(gmin7_64, seq_two)
rh_arp_two = gmin7_64_arp.stages

rhythm_definition.notes = [
        ("r1"),
        ("r2"),
        (rh_arp_one[0], abjad.Duration(1, 2), artic.tie()),
        (rh_arp_one[1], abjad.Duration(3, 4), artic.tie()),
        (rh_arp_one[2], abjad.Duration(1, 4), artic.tie()),
        (rh_arp_one[2], abjad.Duration(2, 4), artic.tie()),
        (rh_arp_one[3], abjad.Duration(2, 4), artic.tie()),
        (rh_arp_one[3], abjad.Duration(1), artic.tie()), 
        # ------------------------------------------ Bar 6
        (rh_arp_two[2], abjad.Duration(1), artic.tie()),
        (rh_arp_two[2], abjad.Duration(1,2), artic.tie()),
        (rh_arp_two[3], abjad.Duration(1,2), artic.tie()),
        (rh_arp_two[3], abjad.Duration(1), artic.tie()),
        #------------Bar 9
        (rh_arp_two[3], abjad.Duration(1, 4), artic.tie()),
        (rh_arp_two[1], abjad.Duration(3, 4), artic.tie()),
        (rh_arp_two[0], abjad.Duration(1), artic.tie()),
        (rh_arp_two[0], abjad.Duration(1), artic.tie()),
        (rh_arp_two[0], abjad.Duration(1)),
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


#--------------/
# LH_I  /
#____________/

rhythm_definition = segment_maker.define_rhythm()
rhythm_definition.instrument_name = 'LH_I'

cmin7_6_kln = cm7_hrmns_kln_eing[0].segment
cmin7_6_arp= LegatoArpeggio(cmin7_6_kln, seq_one)
lh_arp_one = cmin7_6_arp.stages

d7_9 = d7_hrmns_gr_kln[0].segment
d7_9_arp = LegatoArpeggio(d7_9, seq_three)
lh_arp_two = d7_9_arp.stages

d7_6 = d7_hrmns_gr_kln[1].segment
d7_6_arp = LegatoArpeggio(d7_6, seq_three)
lh_arp_three = d7_6_arp.stages


rhythm_definition.notes = [
        (lh_arp_one[0], abjad.Duration(1, 2), artic.tie()),
        (lh_arp_one[1], abjad.Duration(1, 2), artic.tie()),
        (lh_arp_one[1], abjad.Duration(1, 4), artic.tie()),
        (lh_arp_one[2], abjad.Duration(3, 4), artic.tie()),
        (lh_arp_one[3], abjad.Duration(1), artic.tie()),
        (lh_arp_one[3], abjad.Duration(3, 4)), 
        ("r4"),
        # ------------------------------------------ Bar 5
        ("r1"),
        ("r1"),
        ("r1"),
        ("r1"),
        #------------Bar 9
        ("r1"),
        ("r1"),
        ("r1"),
        ("r1"),
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
        (lh_arp_two[0], abjad.Duration(1, 2), artic.tie()),
        (lh_arp_two[1], abjad.Duration(3, 4), artic.tie()),
        (lh_arp_two[2], abjad.Duration(1, 4), artic.tie()),
        (lh_arp_two[2], abjad.Duration(2, 4), artic.tie()),
        (lh_arp_two[3], abjad.Duration(2, 4), artic.tie()),
        #------------ Bar 25
        (lh_arp_two[3], abjad.Duration(1), artic.tie()), 
        (lh_arp_three[3], abjad.Duration(1), artic.tie()),
        (lh_arp_three[3], abjad.Duration(1,2), artic.tie()),
        (lh_arp_three[2], abjad.Duration(1,2), artic.tie()),
        (lh_arp_three[2], abjad.Duration(1), artic.tie()),
        #------------Bar 29
        (lh_arp_three[2], abjad.Duration(1, 4), artic.tie()),
        (lh_arp_three[1], abjad.Duration(3, 4), artic.tie()),
        (lh_arp_three[0], abjad.Duration(1)),
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
        (diad_two, abjad.Duration(1), artic.tie()),
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

# ---------------------------------------RUN SEGMENT

lilypond_file = segment_maker.run()
