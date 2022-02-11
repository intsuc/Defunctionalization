#> main:run/

# int     : [...]
# list    : [...]
# compound: [...]
  data modify storage stack: list append value [0, 1, 2, 3]
# int     : [...]
# list    : [..., [0, 1, 2, 3]]
# compound: [...]
  data modify storage stack: compound append value {pack: "file/Main", id: 0}
# int     : [...]
# list    : [..., [0, 1, 2, 3]]
# compound: [..., main:double/ = {pack: "file/Main", id: 0}]
  function library:int_list/reverse_map/
# int     : [...]
# list    : [..., [6, 4, 2, 0]]
# compound: [...]
  data modify storage stack: int append value 1
# int     : [..., 1]
# list    : [..., [6, 4, 2, 0]]
# compound: [...]
  function main:add/
# int     : [...]
# list    : [..., [6, 4, 2, 0]]
# compound: [..., main:add/do = {pack: "file/Main", id: 2, env: 1}]
  function library:int_list/reverse_map/
# int     : [...]
# list    : [..., [1, 3, 5, 7]]
# compound: [...]
