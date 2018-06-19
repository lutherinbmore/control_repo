class profile::hosts {
  host { 'web.puppet.vm':
    ensure => present,
    ip => '172.18.0.2',
  }
  host { 'db.puppet.vm':
    ensure => present,
    ip => '172.18.0.3',
  }
}
