class profiles::base {
    class { '::ntp': }
    class { '::nscd': }
    contain '::ntp'
    contain '::nscd'
    Class['::ntp'] -> Class['::nscd']
}
