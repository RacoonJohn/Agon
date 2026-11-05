
data modify storage test:in macro.x set from storage test:in pos[0]
data modify storage test:in macro.y set from storage test:in pos[1]
data modify storage test:in macro.z set from storage test:in pos[2]

function test:geometry/particle_macro with storage test:in macro

