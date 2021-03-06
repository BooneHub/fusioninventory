# @summary
#   This class handles fusioninventory params.
#
# @api private
#
class fusioninventory::params {

  $pkgfusion          = 'fusioninventory-agent'
  $windowsmsi         = 'https://github.com/tabad/fusioninventory-agent-windows-installer/releases/download/2.3.18/fusioninventory-agent_windows-x86_2.3.18.exe'
  $crondest           = '/etc/cron.daily/fusioninventory'
  $version            = 'latest'
  $service_ensure     = 'running'
  $service_enable     = true
  $cronscript_enable  = false
  $server_url         = 'http://localhost/glpi/plugins/fusioninventory'
  $delaytime          = 3600

}
