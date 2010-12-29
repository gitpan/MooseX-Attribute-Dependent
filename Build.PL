
use strict;
use warnings;

use Module::Build 0.3601;


my %module_build_args = (
  'build_requires' => {
    'Carp' => '0',
    'English' => '0',
    'File::Find' => '0',
    'File::Temp' => '0',
    'Module::Build' => '0.3601',
    'Scalar::Util' => '0',
    'Test::More' => '0.94',
    'Test::Most' => '0.23',
    'perl' => '5.004'
  },
  'configure_requires' => {
    'Module::Build' => '0.3601'
  },
  'dist_abstract' => 'Restrict attributes based on values of other attributes',
  'dist_author' => [
    'Moritz Onken'
  ],
  'dist_name' => 'MooseX-Attribute-Dependent',
  'dist_version' => '1.0.0',
  'license' => 'bsd',
  'module_name' => 'MooseX::Attribute::Dependent',
  'recommends' => {},
  'recursive_test_files' => 1,
  'requires' => {
    'Moose' => '0',
    'Moose::Exporter' => '0',
    'Moose::Role' => '0',
    'Moose::Util::MetaRole' => '0',
    'overload' => '0'
  },
  'script_files' => []
);


my $build = Module::Build->new(%module_build_args);

$build->create_build_script;
