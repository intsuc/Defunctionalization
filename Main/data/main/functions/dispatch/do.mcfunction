#> main:dispatch/do
#
# @within main:dispatch/

# Dispatch the function corresponding to the id.
  execute if data storage dispatch: {id: 0} run function main:double/
  execute if data storage dispatch: {id: 1} run function main:add/
  execute if data storage dispatch: {id: 2} run function main:add/do
