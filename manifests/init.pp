# fusioninventory
#
# Main class, includes all other classes.
#

class fusioninventory (
  $pkgfusion          = $fusioninventory::params::pkgfusion,
  $windowsmsi         = $fusioninventory::params::windowsmsi,
  $crondest           = $fusioninventory::params::crondest,
  $version            = $fusioninventory::params::version,
  $service_ensure     = $fusioninventory::params::service_ensure,
  $service_enable     = $fusioninventory::params::service_enable,
  $cronscript_enable  = $fusioninventory::params::cronscript_enable,
  $server_url         = $fusioninventory::params::server_url,
  $delaytime          = $fusioninventory::params::delaytime
) inherits fusioninventory::params {
    include    fusioninventory::install

  if $cronscript_enable {
    include    fusioninventory::cronscript
  }

  if $service_enable {
    include    fusioninventory::service
  }

}