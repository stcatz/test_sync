require 'quota'

$DEV = "/dev/sdb"
$UID = 601


dq_old = Quota.getquota($DEV, $UID)



#dq.bsoftlimit = dq_old.bsoftlimit+1000

dq_old.bsoftlimit += 1000



Quota.setquota($DEV, $UID, dq_old)

p dq_old

p Quota.getquota($DEV, $UID)


