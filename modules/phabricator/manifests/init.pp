class phabricator {
	include ::apache::mod::ssl
    include ::apache::mod::php5

    apache::site { 'phabricator.miraheze.org':
        ensure => present,
        source => 'puppet:///modules/phabricator/apache.conf',
    }
}
