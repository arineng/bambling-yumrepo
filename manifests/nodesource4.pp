# Add the nodesource4 (nodesource.com/4.x) repo
class yumrepo::nodesource4 (
  $nodesource4_url         = $yumrepo::params::nodesource4_url,
  $nodesource4_enabled     = $yumrepo::params::nodesource4_enabled,
  $nodesource4_gpgcheck    = $yumrepo::params::nodesource4_gpgcheck,
  $nodesource4_includepkgs = $yumrepo::params::nodesource4_includepkgs,
  $nodesource4_exclude     = $yumrepo::params::nodesource4_exclude,
  $nodesource4_descr       = $yumrepo::params::nodesource4_descr,
) inherits yumrepo::params {

  include yumrepo::cleanall

  yumrepo { 'nodesource4':
    descr       => $nodesource4_descr,
    baseurl     => $nodesource4_url,
    enabled     => $nodesource4_enabled,
    gpgcheck    => $nodesource4_gpgcheck,
    includepkgs => $nodesource4_includepkgs,
    exclude     => $nodesource4_exclude,
    notify      => [ Exec['cleanall'], ],
  }

}
