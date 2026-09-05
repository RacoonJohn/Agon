## get all data of the IC
#
#
# macro inputs:
#   inst: IC's name
#
# storage outputs:
#   _rin_:inst this ({} if the IC don't exist)
#
# return 1 if the IC exist

###########################

data modify storage _rin_:inst this set value {}
$return run data modify storage _rin_:inst this set from storage _rin_:inst "$(inst)"

