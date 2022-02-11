#> main:dispatch/
#
# @internal

# If the function being dispatched is from this datapack, dispatch it.
  execute if data storage dispatch: {pack: "file/Main"} run function main:dispatch/do
