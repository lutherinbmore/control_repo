class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@master.puppet.vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCvpEz6rnw63FtTKmYzKdkOrRzRgKDuJo03Fb3u0Qh94ch7JI8saOXXiSm4VSJT0rJwV34i6pCpfmzQEZcAP7BTGJz2inw+c8TzB3ouugJpGy2ao4JPYp52PW+6DhnyHIi6vOGt4xoCr8Gfpndafl0CC1hz/hHC3qJ/dfP6a7E1vNeLPZdfB0JshpDHp3Jv4z8p03vhltEDZgFseIlTovKyFPraSzOsCnAEYuye5ZDvTbUwRyQ4NUZi1Lv0pL67b676ah3nxqRzQiPIrq0J4mWkrWDoiWzByFTgLb7MQTMtFis2JGwcywWh1s1ElPS3EhLibbmUS5Ev0rknY0q0Ztjp',
	}  
}
