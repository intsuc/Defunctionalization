#> library:int_list/reverse_map/
#
# @public

# list    : [..., [i₁, i₂, ..., iₙ]]
# compound: [..., f]
  data modify storage stack: list append value []
# list: [..., [i₁, i₂, ..., iₙ], []]
# compound: [..., f]
  execute if data storage stack: list[-2][0] run function library:int_list/reverse_map/do
# list: [..., [], [f(iₙ), ..., f(i₂), f(i₁)]]
# compound: [..., f]
  data remove storage stack: list[-2]
# list: [..., [f(iₙ), ..., f(i₂), f(i₁)]]
# compound: [..., f]
  data remove storage stack: compound[-1]
# list: [..., [f(iₙ), ..., f(i₂), f(i₁)]]
# compound: [...]
