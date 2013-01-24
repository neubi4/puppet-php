# == Class: php::pecl::uploadprogress::package
#
# Install the PHP uploadprogress extension
#
# === Parameters
#
# [*version*]
#   The version of uploadprogress to install
#   Could be "latest", "installed" or a pinned verison
#
# [*package*]
#   The package name for uploadprogress
#   For debian it's php5-uploadprogress
#
# [*provider*]
#   The provider used to install php5-uploadprogress
#   Could be "pecl", "apt" or any other OS package provider
#
# === Variables
#
# No variables
#
# === Examples
#
#  include 'php::pecl::uploadprogress::package'
#
#  class {'php::pecl::uploadprogress::package':
#   version => latest
#  }
#
# === Authors
#
# Christian Winther <cw@nodes.dk>
#
# === Copyright
#
# Copyright 2012-2013 Nodes, unless otherwise noted.
#
class php::pecl::uploadprogress::package(
  $version  = $php::pecl::uploadprogress::params::version,
  $package  = $php::pecl::uploadprogress::params::package,
  $provider = $php::pecl::uploadprogress::params::provider
) inherits php::pecl::uploadprogress::params {

  php::pecl::package { 'uploadprogress':
    version  => $version,
    package  => $package,
    provider => $provider
  }

}
