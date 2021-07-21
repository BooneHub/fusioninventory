# @summary
#   This class handles the cron script.
#
# @api private
#
class fusioninventory::cronscript inherits fusioninventory::params{
  file { $fusioninventory::params::crondest:
    ensure  => 'present',
    owner   => 'root',
    group   => 'root',
    mode    => '0755',
    content => epp('fusioninventory/fusioninventory.epp'),
  }
}