#> dispatch:
#
# @public

# compound: [..., {pack, id, env}]
  data remove storage dispatch: env
  data modify storage dispatch: {} merge from storage stack: compound[-1]
  data remove storage stack: compound[-1]
# compound: [...]

function #dispatch:
