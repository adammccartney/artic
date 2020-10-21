import abjad
import artic

#--------------------------------
#   bf_ii |  bf_ii7             |
#   g_v   |  g_V7b913           |
#   e_i   |  e_i9               |
#   cs_ii |  cs_ii7             |
#   bf_v  |  bf_V7b9            |
#   g_i   |  g_iAlt/7           |
#   e_ii  |  e_ii7              |
#   cs_v  |  cs_V7b913          |
#   bf_i  |  bf_I9              |
#   g_ii  |  g_ii7              |
#   e_v   |  e_V7b913           |
#   cs_i  |  cs_I9              |
#-------------------------------


bass_pitches = abjad.PitchSegment("c d e ds f fs fs gs bf a b cs")

#A container holding all harmonies used in the piece 
tetrads = abjad.OrderedDict([ 
            ('bf_ii', abjad.PitchSegment("ef' g' bf' c''")),   # cmin7 
            ('g_v', abjad.PitchSegment("ef' fs' a' d''")),     # D7(b9,13)
            ('e_i', abjad.PitchSegment("e' g' b' d''")),       # emin9
            ('cs_ii', abjad.PitchSegment("fs' as' cs'' ds''")),# dsmin9
            ('bf_v', abjad.PitchSegment("fs' a' c' ef''")),    # F7(b9)
            ('g_i', abjad.PitchSegment("fs' gs' as' cs'")),    # gminb9+/+7 
            ('e_ii', abjad.PitchSegment("e' fs' a' cs''")),    # fsmin7
            ('cs_v', abjad.PitchSegment("ds' fs' a' d''")),    # gsb913
            ('bf_i', abjad.PitchSegment("c' f' a' d''")),      # bfM9
            ('g_ii', abjad.PitchSegment("c' e' g' a'")),       # amin7
            ('e_v', abjad.PitchSegment("d' ef' fs' a'")),      # b7b913
            ('cs_i', abjad.PitchSegment("cs' f' gs' bs'")),    # csM7
            ])

#A container holding all harmonies used in the piece 
pentads = abjad.OrderedDict([ 
            ('bf_ii', abjad.PitchSegment("c ef' g' bf' c''")),       # cmin7 
            ('g_v', abjad.PitchSegment("d ef' fs' a' d''")),     # D7(b9,13)
            ('e_i', abjad.PitchSegment("e e' g' b' d''")),           # emin9
            ('cs_ii', abjad.PitchSegment("ds fs' as' cs'' ds''")),   # dsmin9
            ('bf_v', abjad.PitchSegment("f fs' a' c' ef''")),      # F7(b9)
            ('g_i', abjad.PitchSegment("fs fs' gs' as' cs'")),   # gminb9+/+7 
            ('e_ii', abjad.PitchSegment("fs e' fs' a' cs''")),       # fsmin7
            ('cs_v', abjad.PitchSegment("gs ds' fs' a' d''")),   # gsb913
            ('bf_i', abjad.PitchSegment("bf c' f' a' d''")),         # bfM9
            ('g_ii', abjad.PitchSegment("a c' e' g' a'")),           # amin7
            ('e_v', abjad.PitchSegment("b d' ef' fs' a'")),      # b7b913
            ('cs_i', abjad.PitchSegment("cs ds' f' gs' bs'")),
            ])


# ---- Diads based around Violin string properties (open strings & flageolets)

vln_open = abjad.OrderedDict([
            ('IV', abjad.NamedPitch("g")), 
            ('III', abjad.NamedPitch("d'")),
            ('II', abjad.NamedPitch("a'")),
            ('I', abjad.NamedPitch("e''")),
        ])

vln_scnd_flgs = abjad.OrderedDict([
            ('IV', abjad.NamedPitch("g'")), 
            ('III', abjad.NamedPitch("d''")),
            ('II', abjad.NamedPitch("a''")),
            ('I', abjad.NamedPitch("e'''")),
        ])

vln_thrd_flgs = abjad.OrderedDict([
            ('IV', abjad.NamedPitch("d''")), 
            ('III', abjad.NamedPitch("a''")),
            ('II', abjad.NamedPitch("e'''")),
            ('I', abjad.NamedPitch("b'''")),
        ])


vln_frth_flgs = abjad.OrderedDict([
            ('IV', abjad.NamedPitch("g''")), 
            ('III', abjad.NamedPitch("d'''")),
            ('II', abjad.NamedPitch("a'''")),
            ('I', abjad.NamedPitch("e''''")),
            ])

vln_fth_flgs = abjad.OrderedDict([
            ('IV', abjad.NamedPitch("b''")),
            ('III', abjad.NamedPitch("fs'''")),
            ('II', abjad.NamedPitch("cs''''")),
            ('I', abjad.NamedPitch("gs''''")),
            ])


from artic.tools.material_methods import make_decimo_diad as make_decimo_diad
from artic.tools.FuzzyHarmony import Diad as Diad

four = make_decimo_diad(vln_open['IV'])
three = make_decimo_diad(vln_open['III'])
two = make_decimo_diad(vln_open['II'])
one = make_decimo_diad(vln_open['I'])

vln_str_diads = abjad.OrderedDict([
            ('IV',  Diad(four)), 
            ('III', Diad(three)),
            ('II', Diad(two)),
            ('I', Diad(one)),
          ])

fl_four_P5 = artic.Diad((vln_scnd_flgs['IV'], vln_thrd_flgs['IV']))
fl_three_P5 = artic.Diad((vln_scnd_flgs['III'], vln_thrd_flgs['III']))
fl_two_P5 = artic.Diad((vln_scnd_flgs['II'], vln_thrd_flgs['II']))
fl_one_P5 = artic.Diad((vln_scnd_flgs['I'], vln_thrd_flgs['I']))

pure_fifth_diads = abjad.OrderedDict([
           ('IV', fl_four_P5),
           ('III', fl_three_P5),
           ('II', fl_two_P5),
           ('I', fl_one_P5),
           ])

fl_four_P3 = artic.Diad((vln_frth_flgs['IV'], vln_fth_flgs['IV']))
fl_three_P3 = artic.Diad((vln_frth_flgs['III'], vln_fth_flgs['III']))
fl_two_P3 = artic.Diad((vln_frth_flgs['II'], vln_fth_flgs[ 'II']))
fl_one_P3 = artic.Diad((vln_frth_flgs['I'], vln_fth_flgs['I']))

pure_maj_third_diads = abjad.OrderedDict([
           ('IV', fl_four_P3),
           ('III', fl_three_P3),
           ('II', fl_two_P3),
           ('I', fl_one_P3),
           ])

transposition_lookup = {  -12 : { # -P8
                            "bf_ii": "bf_ii",
                            "g_v": "g_v",
                            "e_i": "e_i",
                            "cs_ii": "cs_ii",
                            "bf_v": "bf_v",
                            "g_i": "g_i",
                            "e_ii": "e_ii",
                            "cs_v": "cs_v",
                            "bf_i": "bf_i",
                            "g_ii": "g_ii",
                            "e_v": "e_v",
                            "cs_i": "cs_i",
                            }, 
                          -11 : { # -m7
                            "bf_ii": "b_ii",
                            "g_v": "gs_v",
                            "e_i": "f_i",
                            "cs_ii": "d_ii",
                            "bf_v": "b_v",
                            "g_i": "gs_i",
                            "e_ii": "f_ii",
                            "cs_v": "d_v",
                            "bf_i": "b_i",
                            "g_ii": "gs_ii",
                            "e_v": "f_v",
                            "cs_i": "d_i",
                            },   
                         -10 : { # -M7
                            "bf_ii": "c_ii",
                            "g_v": "a_v",
                            "e_i": "fs_i",
                            "cs_ii": "ds_ii",
                            "bf_v": "c_v",
                            "g_i": "a_i",
                            "e_ii": "fs_ii",
                            "cs_v": "ds_v",
                            "bf_i": "c_i",
                            "g_ii": "a_ii",
                            "e_v": "fs_v",
                            "cs_i": "ds_i",
                            },   
                         -9 : { # -M6
                            "bf_ii": "cs_ii",
                            "g_v": "bf_v",
                            "e_i": "g_i",
                            "cs_ii": "e_ii",
                            "bf_v": "cs_v",
                            "g_i": "bf_i",
                            "e_ii": "g_ii",
                            "cs_v": "e_v",
                            "bf_i": "cs_i",
                            "g_ii": "bf_ii",
                            "e_v": "g_v",
                            "cs_i": "e_i",
                            },   
                         -8 : { # -m6
                            "bf_ii": "d_ii",
                            "g_v": "b_v",
                            "e_i": "gs_i",
                            "cs_ii": "f_ii",
                            "bf_v": "d_v",
                            "g_i": "b_i",
                            "e_ii": "gs_ii",
                            "cs_v": "f_v",
                            "bf_i": "d_i",
                            "g_ii": "b_ii",
                            "e_v": "gs_v",
                            "cs_i": "f_i",
                            },
                         -7 : { # -P5
                            "bf_ii": "ef_ii",
                            "g_v": "c_v",
                            "e_i": "a_i",
                            "cs_ii": "fs_ii",
                            "bf_v": "ef_v",
                            "g_i": "c_i",
                            "e_ii": "a_ii",
                            "cs_v": "fs_v",
                            "bf_i": "ef_i",
                            "g_ii": "c_ii",
                            "e_v": "a_v",
                            "cs_i": "fs_i",
                            },
                         -6 : { # tritone
                            "bf_ii": "e_ii",
                            "g_v": "cs_v",
                            "e_i": "bf_i",
                            "cs_ii": "g_ii",
                            "bf_v": "e_v",
                            "g_i": "cs_i",
                            "e_ii": "bf_ii",
                            "cs_v": "g_v",
                            "bf_i": "e_i",
                            "g_ii": "cs_ii",
                            "e_v": "bf_v",
                            "cs_i": "g_i",
                            },
                         -5 : { # P4
                            "bf_ii": "f_ii",
                            "g_v": "d_v",
                            "e_i": "b_i",
                            "cs_ii": "gs_ii",
                            "bf_v": "f_v",
                            "g_i": "d_i",
                            "e_ii": "b_ii",
                            "cs_v": "gs_v",
                            "bf_i": "f_i",
                            "g_ii": "d_ii",
                            "e_v": "b_v",
                            "cs_i": "gs_i",
                            },
                         -4 : { # -M3
                            "bf_ii": "fs_ii",
                            "g_v": "ef_v",
                            "e_i": "c_i",
                            "cs_ii": "a_ii",
                            "bf_v": "fs_v",
                            "g_i": "ef_i",
                            "e_ii": "c_ii",
                            "cs_v": "a_v",
                            "bf_i": "fs_i",
                            "g_ii": "ef_ii",
                            "e_v": "c_v",
                            "cs_i": "a_i",
                            },
                         -3 : { # -m3
                            "bf_ii": "g_ii",
                            "g_v": "e_v",
                            "e_i": "cs_i",
                            "cs_ii": "bf_ii",
                            "bf_v": "g_v",
                            "g_i": "e_i",
                            "e_ii": "cs_ii",
                            "cs_v": "bf_v",
                            "bf_i": "g_i",
                            "g_ii": "e_ii",
                            "e_v": "cs_v",
                            "cs_i": "bf_i",
                            },
                         -2 : { # -M2
                            "bf_ii": "af_ii",
                            "g_v": "f_v",
                            "e_i": "d_i",
                            "cs_ii": "b_ii",
                            "bf_v": "af_v",
                            "g_i": "f_i",
                            "e_ii": "d_ii",
                            "cs_v": "b_v",
                            "bf_i": "af_i",
                            "g_ii": "f_ii",
                            "e_v": "d_v",
                            "cs_i": "b_i",
                            },
                         -1 : { # -m2
                            "bf_ii": "a_ii",
                            "g_v": "fs_v",
                            "e_i": "ds_i",
                            "cs_ii": "c_ii",
                            "bf_v": "a_v",
                            "g_i": "fs_i",
                            "e_ii": "ds_ii",
                            "cs_v": "c_v",
                            "bf_i": "a_i",
                            "g_ii": "fs_ii",
                            "e_v": "ds_v",
                            "cs_i": "c_i",
                            },
                         0 : { # P1
                            "bf_ii": "bf_ii",
                            "g_v": "g_v",
                            "e_i": "e_i",
                            "cs_ii": "cs_ii",
                            "bf_v": "bf_v",
                            "g_i": "g_i",
                            "e_ii": "e_ii",
                            "cs_v": "cs_v",
                            "bf_i": "bf_i",
                            "g_ii": "g_ii",
                            "e_v": "e_v",
                            "cs_i": "cs_i",
                            }, 
                         1 : { # m2
                            "bf_ii": "b_ii",
                            "g_v": "gs_v",
                            "e_i": "f_i",
                            "cs_ii": "d_ii",
                            "bf_v": "b_v",
                            "g_i": "gs_i",
                            "e_ii": "f_ii",
                            "cs_v": "d_v",
                            "bf_i": "b_i",
                            "g_ii": "gs_ii",
                            "e_v": "f_v",
                            "cs_i": "d_i",
                            },   
                         2 : { # M2
                            "bf_ii": "c_ii",
                            "g_v": "a_v",
                            "e_i": "fs_i",
                            "cs_ii": "ds_ii",
                            "bf_v": "c_v",
                            "g_i": "a_i",
                            "e_ii": "fs_ii",
                            "cs_v": "ds_v",
                            "bf_i": "c_i",
                            "g_ii": "a_ii",
                            "e_v": "fs_v",
                            "cs_i": "ds_i",
                            },   
                         3 : { # m3
                            "bf_ii": "cs_ii",
                            "g_v": "bf_v",
                            "e_i": "g_i",
                            "cs_ii": "e_ii",
                            "bf_v": "cs_v",
                            "g_i": "bf_i",
                            "e_ii": "g_ii",
                            "cs_v": "e_v",
                            "bf_i": "cs_i",
                            "g_ii": "bf_ii",
                            "e_v": "g_v",
                            "cs_i": "e_i",
                            },   
                         4 : { # M3
                            "bf_ii": "d_ii",
                            "g_v": "b_v",
                            "e_i": "gs_i",
                            "cs_ii": "f_ii",
                            "bf_v": "d_v",
                            "g_i": "b_i",
                            "e_ii": "gs_ii",
                            "cs_v": "f_v",
                            "bf_i": "d_i",
                            "g_ii": "b_ii",
                            "e_v": "gs_v",
                            "cs_i": "f_i",
                            },
                         5 : { # P4
                            "bf_ii": "ef_ii",
                            "g_v": "c_v",
                            "e_i": "a_i",
                            "cs_ii": "fs_ii",
                            "bf_v": "ef_v",
                            "g_i": "c_i",
                            "e_ii": "a_ii",
                            "cs_v": "fs_v",
                            "bf_i": "ef_i",
                            "g_ii": "c_ii",
                            "e_v": "a_v",
                            "cs_i": "fs_i",
                            },
                         6 : { # tritone
                            "bf_ii": "e_ii",
                            "g_v": "cs_v",
                            "e_i": "bf_i",
                            "cs_ii": "g_ii",
                            "bf_v": "e_v",
                            "g_i": "cs_i",
                            "e_ii": "bf_ii",
                            "cs_v": "g_v",
                            "bf_i": "e_i",
                            "g_ii": "cs_ii",
                            "e_v": "bf_v",
                            "cs_i": "g_i",
                            },
                         7 : { # P5
                            "bf_ii": "f_ii",
                            "g_v": "d_v",
                            "e_i": "b_i",
                            "cs_ii": "gs_ii",
                            "bf_v": "f_v",
                            "g_i": "d_i",
                            "e_ii": "b_ii",
                            "cs_v": "gs_v",
                            "bf_i": "f_i",
                            "g_ii": "d_ii",
                            "e_v": "b_v",
                            "cs_i": "gs_i",
                            },
                         8 : { # m 6
                            "bf_ii": "fs_ii",
                            "g_v": "ef_v",
                            "e_i": "c_i",
                            "cs_ii": "a_ii",
                            "bf_v": "fs_v",
                            "g_i": "ef_i",
                            "e_ii": "c_ii",
                            "cs_v": "a_v",
                            "bf_i": "fs_i",
                            "g_ii": "ef_ii",
                            "e_v": "c_v",
                            "cs_i": "a_i",
                            },
                         9 : { # M6
                            "bf_ii": "g_ii",
                            "g_v": "e_v",
                            "e_i": "cs_i",
                            "cs_ii": "bf_ii",
                            "bf_v": "g_v",
                            "g_i": "e_i",
                            "e_ii": "cs_ii",
                            "cs_v": "bf_v",
                            "bf_i": "g_i",
                            "g_ii": "e_ii",
                            "e_v": "cs_v",
                            "cs_i": "bf_i",
                            },
                         10 : { # m7
                            "bf_ii": "af_ii",
                            "g_v": "f_v",
                            "e_i": "d_i",
                            "cs_ii": "b_ii",
                            "bf_v": "af_v",
                            "g_i": "f_i",
                            "e_ii": "d_ii",
                            "cs_v": "b_v",
                            "bf_i": "af_i",
                            "g_ii": "f_ii",
                            "e_v": "d_v",
                            "cs_i": "b_i",
                            },
                         11 : { # M7
                            "bf_ii": "a_ii",
                            "g_v": "fs_v",
                            "e_i": "ds_i",
                            "cs_ii": "c_ii",
                            "bf_v": "a_v",
                            "g_i": "fs_i",
                            "e_ii": "ds_ii",
                            "cs_v": "c_v",
                            "bf_i": "a_i",
                            "g_ii": "fs_ii",
                            "e_v": "ds_v",
                            "cs_i": "c_i",
                            },
                         12 : { # P8
                            "bf_ii": "bf_ii",
                            "g_v": "g_v",
                            "e_i": "e_i",
                            "cs_ii": "cs_ii",
                            "bf_v": "bf_v",
                            "g_i": "g_i",
                            "e_ii": "e_ii",
                            "cs_v": "cs_v",
                            "bf_i": "bf_i",
                            "g_ii": "g_ii",
                            "e_v": "e_v",
                            "cs_i": "cs_i",
                            }
                        }

"""Lookup table used for make_diads function
   harmonizing in diatonic variations of C scales
   C maj // Harmonic Minor
   """
diatonic_register_lookup = { 'd2' : {
                            abjad.NamedPitchClass("c"): 2,  
                            abjad.NamedPitchClass("b"): 1,  
                            abjad.NamedPitchClass("bf"): 2, 
                            abjad.NamedPitchClass("as"): 2,
                            abjad.NamedPitchClass("a"): 2,  
                            abjad.NamedPitchClass("af"): 1, 
                            abjad.NamedPitchClass("gs"): 1, 
                            abjad.NamedPitchClass("g"): 2,  
                            abjad.NamedPitchClass("fss"): 2,  
                            abjad.NamedPitchClass("fs"): 1, 
                            abjad.NamedPitchClass("f"): 2,    
                            abjad.NamedPitchClass("e"): 1,    
                            abjad.NamedPitchClass("ef"): 2,  
                            abjad.NamedPitchClass("ds"): 2,  
                            abjad.NamedPitchClass("d"): 2,   
                            abjad.NamedPitchClass("df"): 1, 
                            abjad.NamedPitchClass("cs"): 1, 
                          },
                             'd3' : {
                            abjad.NamedPitchClass("c"): 3,  
                            abjad.NamedPitchClass("b"): 4,  
                            abjad.NamedPitchClass("bf"): 4, 
                            abjad.NamedPitchClass("as"): 4, 
                            abjad.NamedPitchClass("a"): 3,  
                            abjad.NamedPitchClass("af"): 4, 
                            abjad.NamedPitchClass("gs"): 4, 
                            abjad.NamedPitchClass("g"): 4,  
                            abjad.NamedPitchClass("fss"): 4,  
                            abjad.NamedPitchClass("fs"): 3, 
                            abjad.NamedPitchClass("f"): 4,    
                            abjad.NamedPitchClass("e"): 3,    
                            abjad.NamedPitchClass("ef"): 4,  
                            abjad.NamedPitchClass("ds"): 4,  
                            abjad.NamedPitchClass("d"): 3,   
                            abjad.NamedPitchClass("df"): 4, 
                            abjad.NamedPitchClass("cs"): 4, 
                            },
                             'd5': {
                            abjad.NamedPitchClass("c"): 7,  
                            abjad.NamedPitchClass("b"): 6,  
                            abjad.NamedPitchClass("bf"): 7, 
                            abjad.NamedPitchClass("as"): 7, 
                            abjad.NamedPitchClass("a"): 7,  
                            abjad.NamedPitchClass("af"): 8, 
                            abjad.NamedPitchClass("gs"): 8, 
                            abjad.NamedPitchClass("g"): 7,  
                            abjad.NamedPitchClass("fss"): 7,  
                            abjad.NamedPitchClass("fs"): 6, 
                            abjad.NamedPitchClass("f"): 7,    
                            abjad.NamedPitchClass("e"): 7,    
                            abjad.NamedPitchClass("ef"): 7,  
                            abjad.NamedPitchClass("ds"): 7,  
                            abjad.NamedPitchClass("d"): 7,   
                            abjad.NamedPitchClass("df"): 8, 
                            abjad.NamedPitchClass("cs"): 8, 
                            },
                             'd6': {
                            abjad.NamedPitchClass("c"): 8,  
                            abjad.NamedPitchClass("b"): 9,  
                            abjad.NamedPitchClass("bf"): 9, 
                            abjad.NamedPitchClass("as"): 9, 
                            abjad.NamedPitchClass("a"): 8,  
                            abjad.NamedPitchClass("af"): 9, 
                            abjad.NamedPitchClass("gs"): 9, 
                            abjad.NamedPitchClass("g"): 8,  
                            abjad.NamedPitchClass("fss"): 8,  
                            abjad.NamedPitchClass("fs"): 9, 
                            abjad.NamedPitchClass("f"): 9,    
                            abjad.NamedPitchClass("e"): 8,    
                            abjad.NamedPitchClass("ef"): 9,  
                            abjad.NamedPitchClass("ds"): 9,  
                            abjad.NamedPitchClass("d"): 9,   
                            abjad.NamedPitchClass("df"): 8,                                
                            abjad.NamedPitchClass("cs"): 8,                                
                                 },
                             'd7': {
                            abjad.NamedPitchClass("c"): 11,  
                            abjad.NamedPitchClass("b"): 10,  
                            abjad.NamedPitchClass("bf"): 11, 
                            abjad.NamedPitchClass("as"): 11, 
                            abjad.NamedPitchClass("a"): 10,  
                            abjad.NamedPitchClass("af"): 11, 
                            abjad.NamedPitchClass("g"): 10,  
                            abjad.NamedPitchClass("fss"): 10,  
                            abjad.NamedPitchClass("fs"): 11, 
                            abjad.NamedPitchClass("f"): 11,    
                            abjad.NamedPitchClass("e"): 10,    
                            abjad.NamedPitchClass("ef"): 11,  
                            abjad.NamedPitchClass("d"): 10,   
                            abjad.NamedPitchClass("cs"): 11,                                
                                     },
                             }
                            
scale_lookup = { 'bfm' : abjad.PitchSegment("bf b c' df' ef' f gf' g af' a'"),
                 'gm' : abjad.PitchSegment("g' af' a' bf' c'' d'' ef'' e'' f'' fs''"),
                 'em' : abjad.PitchSegment("e' f' fs' g' a' b' c'' cs'' d'' ds''"),
                 'csm' : abjad.PitchSegment("cs' d' ds' e' fs' gs' a' as' b' bs'"),
               }

melody_lookup = { 'bfm' : {
                  1: abjad.PitchSegment("g' bf' ef'' b'"), 
                  2: abjad.PitchSegment("b df'' g' ef''"),
                  3: abjad.PitchSegment("ef' g' c'' a'"),
                  4: abjad.PitchSegment("a' c'' g' ef''"),
                  5: abjad.PitchSegment("ef' g' c'' a'"),
                  },
                  'gm' : {
                  1: abjad.PitchSegment("g' bf' ef'' c''"), 
                  2: abjad.PitchSegment("c'' ef'' a' f''"),
                  3: abjad.PitchSegment("f' a' d'' bf'"),
                  4: abjad.PitchSegment("bf' d'' g' ef''"),
                  5: abjad.PitchSegment("ef' g' c'' a'"),
                  },
                  'em' : {
                  1: abjad.PitchSegment("g' b' e' cs''"), 
                  2: abjad.PitchSegment("cs'' e' a' f''"),
                  3: abjad.PitchSegment("f' a' d'' b'"),
                  4: abjad.PitchSegment("b' d'' g' e''"),
                  5: abjad.PitchSegment("e' g' c'' a'"),
                  },
                  'csm' : {
                  1: abjad.PitchSegment("gs' b' e'' cs''"), 
                  2: abjad.PitchSegment("cs'' e'' a' fs''"),
                  3: abjad.PitchSegment("fs' a' d'' b'"),
                  4: abjad.PitchSegment("b' ds'' gs' e''"),
                  5: abjad.PitchSegment("e' gs' cs'' a'"),
                  },
                }
