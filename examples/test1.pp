
# include fusioninventory


node default {

  class { 'fusioninventory':
    cronscript_enable => false,
    server_url        => 'http://localhost/glpi/plugins/fusioninventory'
  }
}
