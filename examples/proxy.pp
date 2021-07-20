
# include fusioninventory


node default {

  class { 'fusioninventory':
    no_proxy   => false,
    server_url => 'http:///'
  }
}
