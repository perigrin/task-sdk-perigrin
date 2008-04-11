# Load the Module::Install bundled in ./inc/
use inc::Module::Install;

# Define metadata
name 'Task-SDK-Perigrin';
all_from 'lib/Task/SDK/Perigrin.pm';

# Specific dependencies
requires 'Moose'                    => undef;
requires 'POE'                      => undef;
requires 'Bundle::POE::IRC'         => undef;
requires 'MooseX::Storage'          => undef;
requires 'MooseX::POE'              => undef;
requires 'MooseX::Getopt'           => undef;
requires 'MooseX::LogDispatch'      => undef;
requires 'MooseX::AttributeHelpers' => undef;
requires 'MooseX::Daemonize'        => undef;
requires 'XML::LibXML'              => undef;
requires 'Test::More'               => undef;
requires 'Module::Install'          => undef;
requires 'Module::Starter::PBP'     => undef;
requires 'Regexp::Common'           => undef;
requires 'JSON::Any'                => undef;
requires 'DBI'                      => undef;
requires 'DBD::SQLite'              => undef;
requires 'Sub::Exporter'            => undef;
requires 'IO::AtomicFile'           => undef;

auto_install;
WriteAll;
