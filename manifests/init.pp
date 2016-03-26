class win_vagrant_orchestrate {
  package { 'vagrant':
	  	ensure   => 'latest',
	  	provider => 'chocolatey',
	}->
	file{'C:/HashiCorp/Vagrant/embedded/bin/libcurl.dll':
		ensure => present,
		mode => '0777',
		source => 'puppet:///modules/win_vagrant_orchestrate/libcurl.dll'
		}->
	exec{'install-vagrant-managed-server':
 		command  => 'C:\\HashiCorp\\Vagrant\\bin\\vagrant.exe plugin install vagrant-managed-servers --plugin-version 0.6.0',
 		timeout  => 1800
	}->
	exec{'install-vagrant-winrm':
		command  => 'C:\\HashiCorp\\Vagrant\\bin\\vagrant.exe plugin install vagrant-winrm-s',
		timeout  => 1800
	}->
	exec{'install-vagrant-orchestrate':
 		command  => 'C:\\HashiCorp\\Vagrant\\bin\\vagrant.exe plugin install vagrant-orchestrate',
 		timeout  => 1800
	}
  package{'mls-software-openssh':
	ensure => 'latest',
	provider => 'chocolatey'
	}
	package{'rsync':
	ensure => 'latest',
	provider => 'chocolatey'
	}
  package{'gow':
	ensure => 'latest',
	provider => 'chocolatey'
	}
}
