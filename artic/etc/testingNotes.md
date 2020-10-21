
TestingNotes.md
===============================================================================

A brief overview of testing for artic


-------------------------------------------------------------------------------
Tools for generating materials
------------------------------------------------------------------------------
# Progression generator
 Spiral routine for generating variations of a harmonic progression

 make_progression | class Progression.get_harmony | invert_harmony | 
 make_new_progression | 


## spec for routine that creates Variations of a HarmonicProgression

 + copy Progression
 + modify selected harmony
 + make new progression

## spec for class FuzzyHarmony
 Public Members
 + shortname (string constant)
 + inversion (variable int)
 + PitchSegment
 
 Non-mofiying members
 + get pitch_segment

## Spec for class Progression

 + stores a tuple of FuzzyHarmonies 
  
  Members
  - FuzzyHarmonies
 
  None Modifying Member Functions
  - get FuzzyHarmony 
 
  Modifying Member Functions // trying to write a modifying operation
  - set harmony              // for essentially a tuple not cosher  
  
## spec  make new progression (Progression, replace_index, replacement)

 + makes new tuple like object (progression) based on arguments

## Spec for invert routines

 + takes arguments of PitchSegment and shift (1=first inversion, 2=second
   inversion...limit is obviously 12)
 + returns new FuzzyHarmony 

 + do invert_up and invert_down to limit complexity of routines

 + invert_up 
  - call global_minima to find lowest note
  - transposed note is lowest note.tranpose("+P8")
  - trim lowest note
  - pitch_segment to pitch_set
  - append transposed
  - pitch_set to pitch_segment
  - make new fuzzy harmony
  - return new fuzzy harmony

 + invert_down
  - call global_maxima to find highest note
  - transposed is higehst note.transpose("+P8")
  - trim highest note
  - pitch_segment to pitch_set
  - prepend tranposed            // needs subroutine for prepend
  - pitch_set to pitch_segment
  - make new FuzzyHarmony
  - return new fuzzy harmony 

## Spec for make_iterable_pitch_set routine

 + translator routine for turning a PitchSegment into a PitchSet that can be
   easily used to create an instantiate of a PitchDeque class

## Spec for class PitchDeque

 + class that encapsulates one of the core libraries datastructures
  - this enables the subroutines required by invert_down

 + modifying member functions: 
  - trim right
  - trim left
  - extend right 
  - extend left
  - set pitch deque 
  
 + non-modifying member functions:
  - get_pitch_deque


