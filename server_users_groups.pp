group { 'group01':
  ensure => present,
}

group { 'group02':
  ensure => present,
}

user { 'user04':
  ensure     => present,
  shell      => '/bin/bash',
  password   => '$6$xyz$RS.wHeM.mhNC0lxrp5Zds0ubSAKobEjpYvIWroBijzmu0tuqfQ1C6iBejYnxrEonuCOM0jgFUF3Dc038gW2.D.',
  groups     => 'group01',
  managehome => true,
}

user { 'user05':
  ensure     => present,
  shell      => '/bin/bash',
  password   => '$1$xyz$zgaD.DMkn/GZf6mpdQAeo1',
  groups     => 'group02',
  managehome => true,
}

user { 'user06':
  ensure     => present,
  shell      => '/bin/bash',
  password   => '$1$xyz$3NpqxXglL5/QnHcWAGyKF/',
  groups     => ['group01','group02'],
  managehome => yes,
}

user { 'user07':
  ensure     => present,
  shell      => '/bin/bash',
  password   => '$1$xyz$tl1zjvHHhs9mGjTy.WPlC0',
  groups     => [],
  managehome => true,
}
