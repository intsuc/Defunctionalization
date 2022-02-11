#> main:double/
#
# @internal

# int     : [..., i]
  execute store result storage stack: int[-1] int 2.0 run data get storage stack: int[-1] 1.0
# int     : [..., i * 2.0]

# Set the id of this function.
  data modify storage dispatch: id set value 0
