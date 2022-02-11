#> main:add/do
#
# @internal

scoreboard objectives add main dummy

#>
# @private
  #declare score_holder main:i
  #declare score_holder main:env

# int     : [..., i]
  execute store result score main:i main run data get storage stack: int[-1] 1.0
  execute store result score main:env main run data get storage dispatch: env 1.0
  execute store result storage stack: int[-1] int 1.0 run scoreboard players operation main:i main += main:env main
# int     : [..., i + env]

scoreboard players reset main:i
scoreboard players reset main:env
scoreboard objectives remove main

# Set the id of this function.
  data modify storage dispatch: id set value 2
