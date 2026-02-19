## Main function, which you run in-game

# Store input and scale accordingly
$data modify storage aa2r:input int set value $(int)
$data modify storage aa2r:input dec set value $(dec)
execute store result storage aa2r:temp input.int int 1000000 run data get storage aa2r:input int
execute store result storage aa2r:temp input.dec int 1 run data get storage aa2r:input dec

# Convert the angle into radians
function aa2r_func:logic/angle_to_rads with storage aa2r:temp input
tellraw @a ["", {text: "Radians", bold: true, color: "red"} ,": ", {nbt:"rads", storage:"aa2r:out"}]