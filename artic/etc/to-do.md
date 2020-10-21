8-7-20

 + ~~Write test for `material_methods.py`~~
 + ~~Create push/pop methods for PhraseStream containers list~~
  - ~~okay, better way, refactor the code in  PhraseMaker module~~
  - ~~this all worked fine, Phrases are making it to Instrument Voices in
    Score~~
  - ~~there is a problem to solve with `segment_maker._configure_score()`~~
 + ~~Clean up segments B-G~~ 

 + Test a build with travis
  - Read testing with pytest and figure out how to use it properly;-)!

 + rework material in segments, each segment is 64 bars long
  - we could make all the harmonies (one harmony and inversions) for each
    segment and store these in a dictionary with a reference 
  - the `make_diads` routine is resulting in some pretty jumpy intervals, try
    reducing the complexity of this a bit and see if in doing so, it's possible
    to produce smoother lines. 
  - one arpeggio pattern per harmony (three in total) 

 + Write violin part 
 
 + Write methods for attachments (markup + dynamics)

# 16-6-20
 
 + ~~Research a way to use RhythmDefinition.py effectively~~
  - ~~refine the routine used to produce an rmaker~~
  - ~~define a pitches property in FuzzyHarmony~~
  - ~~this can be used in making rmakers~~
  - ~~check viability with Trevor's RhythmDefinition~~

 + ~~Fix linkage to stylesheets~~ 
  - ~~run same segment A test and fix errors on build~~

# 15-6-20

 + ~~Clean up tested code~~
 + ~~Make a working segment~~
  - ~~first build a score example using existing code~~
  - ~~figure out how to handle overlapping rmakers~~

# 28-5-20

 + ~~Read abjad.Chord to see if method exists to create invertion~~
 + ~~Create method to invert guitar chords stored in abjad.OrdinaryDict~~
 + ~~Iteratively invert all chords~~
  - ~~Why would you want to build a static resource that holds all~~
    ~~possible inversions?~~
  - ~~Inversions are more commonly found in sequences~~
  - ~~Therefor it makes more sense to write a simple dictionary of used
    chords~~
    ~~and import a routine for inversion~~
 + ~~Make quick notational sketch of possible guitar figures~~
  - ~~pre-requisites:~~ 
   + ~~these should be as general as possible, so they can be ported to other~~
     ~~instruments incase the instrumentation changes by the autumn and so that~~  
     ~~they can be used for the harp parts in the orchestral piece later in the~~
     ~~summer~~ 
```
Data Structure: 
 |_ Chord
   |_sub-grouping
     |_max-voices is restricted by instrument 
     |_tetrad voicing 
     |_triad voicing
     |_min voices = diad voicing
   |_figuration style
     |_arpeggio
       |_up
       |_up-down
       |_down-up
       |_down
       |_random
     |_chordal
```

 + ~~Clarification of what we want to do with these chords:~~
  - ~~Write a routine that outputs all possible harmonic progressions:~~
   + [[ii - v - i], [iib - v - i], [iib, v, ia], [ii - v -i]]
  - ~~Once these harmonic progressions are formed, it's possible~~ 
    ~~to express the harmonic material as chords or pitch segments~~
    ~~and to use these in collaboration with rmakers to create actual~~
    ~~"phrases"~~


* ~~Figure out if there is some way to make a selection based on a PitchSegment~~  
  - ~~review abjad music maker def by Trevor (abjad users::re:rmakers)~~
  - ~~build verbatim example to see how iterators are making leaves~~
 + ~~Make do-ability survey (impossible, hard, easy) 
 + ~~Send notes + survey to guitarists~~


# 20-5-2020 Next Steps 
+ ~~re-read Oberholzer diss chpt. 3~~
+ ~~design a few tests to get familiar with timespans & rmakers~~
+ ~~re-read Oberholzer diss chpt. 3~~
+ ~~design a few tests to get familiar with timespans & rmakers~~
+ ~~Customize SegmentMaker definition~~

~~Reading: creating a musik-maker class~~
https://groups.google.com/forum/?utm_source=digest&utm_medium=email#!searchin/abjad-user/rmakers%7Csort:date/abjad-user/zJOTepHWGlE/pdumspKSAAAJ~~
