# Load the Module::Install bundled in ./inc/
use inc::Module::Install;

# Define metadata
name 'Task-SDK-Perigrin';
all_from 'lib/Task/SDK/Perigrin.pm';

# Specific dependencies
requires 'local::lib'   => undef;
requires 'Task::Kensho' => undef;

feature 'Moose',
  -default                     => 1,
  'Moose'                      => undef,
  'namespace::autoclean'       => undef,
  'MooseX::GetOpt'             => undef,
  'MooseX::SimpleConfig'       => undef,
  'MooseX::AttributeHelpers'   => undef,
  'MooseX::POE'                => undef,
  'MooseX::Declare'            => undef,
  'MooseX::Types'              => undef,
  'MooseX::Types::Path::Class' => undef,
  'MooseX::LogDispatch'        => undef,
  'MooseX::Workers'            => undef,
  'MooseX::MetaDescription'    => undef,
  'MooseX::Storage'            => undef,
  'Task::Moose'                => undef,
  ;

feature 'Module Development',
  -default                        => 1,
  'Module::Install'               => undef,
  'Module::Install::AutoManifest' => undef,
  'Module::Install::Repository'   => undef,
  ;

feature 'Bots',
  -default              => 0,
  'Task::POE::IRC'      => undef,
  'Regexp::Common::IRC' => undef,
  ;

feature 'Storage',
  -default      => 0,
  'KiokuDB'     => undef,
  'DBIx::Class' => undef,
  ;

feature 'Tools',
  -default           => 1,
  'App::Ack'         => undef,
  'App::Nopaste'     => undef,
  'Module::Corelist' => undef,
  ;

feature 'Utilities',
  -default    => 1,
  'JSON::Any' => undef,
  'YAML::XS'  => undef,
  ;
feature 'Web',
  -default                                       => 0,
  'Catalyst::Runtime'                            => undef,
  'Catalyst::View::TT'                           => undef,
  'Catalyst::Controller::REST'                   => undef,
  'Catalyst::Authentication::Credential::OpenID' => undef,
  'HTTP::Engine'                                 => undef,
  ;

feature 'XML',
  -default       => 0,
  'XML::LibXML'  => undef,
  'XML::Toolkit' => undef,
  ;

auto_set_repository;
auto_manifest;
auto_install;
WriteAll;
