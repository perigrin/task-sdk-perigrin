# Load the Module::Install bundled in ./inc/
use inc::Module::Install;

# Define metadata
name 'Task-SDK-Perigrin';
all_from 'lib/Task/SDK/Perigrin.pm';

# Specific dependencies
requires 'Task::Kensho'   => undef;
requires 'Task::Moose'    => undef;
requires 'Task::POE::IRC' => undef;
requires 'Regexp::Common' => undef;
requires 'JSON::Any'      => undef;

feature 'XML',
  -default      => 1,
  'XML::LibXML' => undef,
  'XML::SAX'    => undef,
  ;

auto_install;
WriteAll;
