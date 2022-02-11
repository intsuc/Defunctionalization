#> main:add/
#
# @internal

# int     : [..., i]
# compound: [...]
  data modify storage stack: compound append value {pack: "file/Main", id: 2}
  data modify storage stack: compound[-1].env set from storage stack: int[-1]
# int     : [..., i]
# compound: [..., main:add/do = {pack: "file/Main", id: 2, env: i}]
  data remove storage stack: int[-1]
# int     : [...]
# compound: [..., main:add/do = {pack: "file/Main", id: 2, env: i}]

# Set the id of this function.
  data modify storage dispatch: id set value 1
