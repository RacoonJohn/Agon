
$execute if data storage math:data in.objective{type:"stay_a"} run return run data modify storage math:data display append value {text:"Stay $(value)s in A"}
$execute if data storage math:data in.objective{type:"stay_b"} run return run data modify storage math:data display append value {text:"Stay $(value)s in B"}

$execute if data storage math:data in.objective{type:"kill",value:1} run return run data modify storage math:data display append value {text:"Do $(value) kill"}
$execute if data storage math:data in.objective{type:"kill_melee",value:1} run return run data modify storage math:data display append value {text:"Do $(value) melee kill"}
$execute if data storage math:data in.objective{type:"kill_range",value:1} run return run data modify storage math:data display append value {text:"Do $(value) range kill"}

$execute if data storage math:data in.objective{type:"kill"} run return run data modify storage math:data display append value {text:"Do $(value) kills"}
$execute if data storage math:data in.objective{type:"kill_melee"} run return run data modify storage math:data display append value {text:"Do $(value) melee kills"}
$execute if data storage math:data in.objective{type:"kill_range"} run return run data modify storage math:data display append value {text:"Do $(value) range kills"}




