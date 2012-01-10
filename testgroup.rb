require 'quota'
require 'etc'

$DEV = "/dev/sdb"
$QUOTAS = "/mnt/sdb/aquota.group"

print("group id: ")
uid = gets.chop
p "uid==", uid


p $UID
begin
  dq = Quota.getquota($DEV, $UID)
rescue Errno::ESRCH
  dq = Quota::DiskQuota.new
end


print("quota = #{dq.inspect}\n")