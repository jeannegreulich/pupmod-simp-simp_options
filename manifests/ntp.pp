# @summary Sets up NTP configuration variables
#
# @param servers The list of NTP time servers for the network.
#   A consistent time source is critical to your systems' security. **DO NOT**
#   run multiple production systems using individual hardware clocks!
#   Default to simp_options::ntpd::servers for backward compatibility.
#
# @author https://github.com/simp/pupmod-simp-simp_options/graphs/contributors
#
class simp_options::ntp (
  Array[Simplib::Host] $servers = simplib::lookup('simp_options::ntpd::servers', { 'default_value' => []),
){
  assert_private()
  simplib::validate_net_list($servers)
}
