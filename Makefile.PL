# Load the Module::Install bundled in ./inc/
use inc::Module::Install;

# Define metadata
name 'Task-SDK-Perigrin';
all_from 'lib/Task/SDK/Perigrin.pm';

# Specific dependencies
requires 'Task::Kensho' => undef;
requires 'Task::Moose'  => undef;

feature 'Bots',
  -default         => 1,
  'Task::POE::IRC' => undef,
  'Regexp::Common' => undef,
  ;

feature 'XML',
  -default      => 1,
  'XML::LibXML' => undef,
  'XML::SAX'    => undef,
  ;

feature 'Module Dev',
  -default                       => 1,
  'Module::Starter::Plugin::TT2' => undef,
  ;

feature 'Tools',
  -default   => 1,
  'App::Ack' => undef,
  ;

auto_install;
WriteAll;
