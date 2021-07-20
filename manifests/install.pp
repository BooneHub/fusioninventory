
#include fusioninventory

class fusioninventory::install inherits fusioninventory::params
{
    case $facts['os']['family'] {
      'Windows': {
        package { $fusioninventory::params::pkgfusion:
        ensure          => installed,
        source          => 'https://github.com/tabad/fusioninventory-agent-windows-installer/releases/download/2.3.18/fusioninventory-agent_windows-x86_2.3.18.exe',
        install_options => ['/acceptlicense=yes /add-firewall-exception=yes \
        /execmode=service /installtasks=Full \
        /server=$fusioninventory::params::server_url'],
        }
      }
      'RedHat', 'CentOS':  {
        package {  $fusioninventory::params::pkgfusion:
          ensure => $fusioninventory::params::version,
        }
      }
      /^(Debian|Ubuntu)$/: {
        package {  $fusioninventory::params::pkgfusion:
          ensure => $fusioninventory::params::version,
        }
      }
      default:             { warning('This fusioninventory module does not yet work on your OS.') }
}

}
