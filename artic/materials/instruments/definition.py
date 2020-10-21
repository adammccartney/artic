import abjad

from artic.materials.instruments import markups as markups

instruments = abjad.OrderedDict(
    [
        (
            "Violin",
            abjad.Violin(
                markup=markups.instrument("Violin"),
                short_markup=markups.short_instrument("vln"),
            ),
        ),
        (
            "Monosynth",
            abjad.ClarinetInBFlat(
                markup=markups.instrument("MonoSynth"),
                short_markup=markups.short_instrument("msy"),
            ),
        ),
        (
            "Polysynth",
            abjad.Piano(
                markup=markups.instrument("PolySynth"),
                short_markup=markups.short_instrument("psy"),
            ),
        ),
        ]
)

if __name__ == '__main__':
    for key, item in instruments.items():
        print(key, item)


