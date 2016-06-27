# Class: forward_journald
#===========================
#
# Installs docker-forward-journald package.
#
# Parameters
#----------
#
# * ensure_package
# Version of package to be installed
#
# * package_name
# Name of the package to be installed
#
# * binary_chmod
# By default the binary is set to mode 0700 (only root has access)
# This can be changed with this parameter
#
class forward_journald (
  $ensure_package = 'installed',
  $package_name = 'docker-forward-journald',
  $binary_chmod = '0700',
) {
  package { $package_name:
    ensure => $ensure_package,
  } ->
  file { '/usr/bin/forward-journald':
    ensure => file,
    mode   => $binary_chmod,
  }
}
 => file,
      mode   => $binary_chmod,
    }
  }
}
