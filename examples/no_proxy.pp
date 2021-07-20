
# include fusioninventory


node default {

  class { 'fusioninventory':
    no_proxy   => true,
    server_url => 'http:///'
  }
}
