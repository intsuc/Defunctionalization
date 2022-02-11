#> library:int_list/reverse_map/do
#
# @within library:int_list/reverse_map/**

# int     : [...]
# list    : [..., [i₁, i₂, ..., iₖ₋₁, iₖ], [f(iₙ), ..., f(iₖ₊₁)]]
# compound: [..., f]
  data modify storage stack: int append from storage stack: list[-2][-1]
# int     : [..., iₖ]
# list    : [..., [i₁, i₂, ..., iₖ₋₁, iₖ], [f(iₙ), ..., f(iₖ₊₁)]]
# compound: [..., f]
  data remove storage stack: list[-2][-1]
# int     : [..., iₖ]
# list    : [..., [i₁, i₂, ..., iₖ₋₁], [f(iₙ), ..., f(iₖ₊₁)]]
# compound: [..., f]
  data modify storage stack: compound append from storage stack: compound[-1]
# int     : [..., iₖ]
# list    : [..., [i₁, i₂, ..., iₖ₋₁], [f(iₙ), ..., f(iₖ₊₁)]]
# compound: [..., f, f]
  function dispatch:
# int     : [..., f(iₖ)]
# list    : [..., [i₁, i₂, ..., iₖ₋₁], [f(iₙ), ..., f(iₖ₊₁)]]
# compound: [..., f]
  data modify storage stack: list[-1] append from storage stack: int[-1]
# int     : [..., f(iₖ)]
# list    : [..., [i₁, i₂, ..., iₖ₋₁], [f(iₙ), ..., f(iₖ₊₁), f(iₖ)]]
# compound: [..., f]
  data remove storage stack: int[-1]
# int     : [...]
# list    : [..., [i₁, i₂, ..., iₖ₋₁], [f(iₙ), ..., f(iₖ₊₁), f(iₖ)]]
# compound: [..., f]
  execute if data storage stack: list[-2][0] run function library:int_list/reverse_map/do
