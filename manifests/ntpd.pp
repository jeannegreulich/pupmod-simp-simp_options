# @summary Depercated.
#
# @param servers
#   This variable has been deprecated and will be removed in the next release
#   of simp_options.  Use simp_options::ntp instead.
#
# @author https://github.com/simp/pupmod-simp-simp_options/graphs/contributors
#
class simp_options::ntpd (
  Array[Simplib::Host] $servers = []
){
  assert_private()
  simplib::validate_net_list($servers)
}
