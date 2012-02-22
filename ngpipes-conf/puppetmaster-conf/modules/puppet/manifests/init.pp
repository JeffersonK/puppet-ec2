
class puppet::master {
    package { 
        "puppetmaster":
            ensure => installed,
            notify => Service[puppetmaster];
    }
    service { 
        "puppetmaster":
            ensure => running,
            enable => true;
    }
}
