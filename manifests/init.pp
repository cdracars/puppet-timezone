class timezone {
    package { "tzdata":
        ensure => installed
    }
}

class timezone::central inherits timezone {
    file { "/etc/localtime":
        require => Package["tzdata"],
        source => "file:///usr/share/zoneinfo/US/Central",
    }
}
