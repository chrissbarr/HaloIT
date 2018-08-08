pod_letter=string('pod_'+argument1)
pod_locx=string('pod_'+argument2)
capletter=argument0
if pod_letter>0{
pod_letter-=1
instance_create(pod_locx,pod_locy,archer_missile)
alarm[1]=2}
