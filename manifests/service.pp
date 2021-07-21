# @summary
#   This class handles the fusioninventory service.
#
# @api private
#
class fusioninventory::service inherits fusioninventory::params {
  file { '/etc/fusioninventory/agent.cfg':
    ensure  => 'present',
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    content => epp('fusioninventory/agent.cfg.epp'),
  }

  service { $fusioninventory::params::pkgfusion :
    ensure =>  $fusioninventory::params::ensure,
    enable =>  $fusioninventory::params::enable,
  }
}