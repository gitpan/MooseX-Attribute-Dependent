#
# This file is part of MooseX-Attribute-Dependent
#
# This software is Copyright (c) 2011 by Moritz Onken.
#
# This is free software, licensed under:
#
#   The (three-clause) BSD License
#
package MooseX::Attribute::Dependent::Meta::Role::Role;
{
  $MooseX::Attribute::Dependent::Meta::Role::Role::VERSION = '1.1.2';
}
use Moose::Role;

sub composition_class_roles {
    'MooseX::Attribute::Dependent::Meta::Role::Composite'
}

no Moose::Role;

1;

__END__
=pod

=head1 NAME

MooseX::Attribute::Dependent::Meta::Role::Role

=head1 VERSION

version 1.1.2

=head1 AUTHOR

Moritz Onken

=head1 COPYRIGHT AND LICENSE

This software is Copyright (c) 2011 by Moritz Onken.

This is free software, licensed under:

  The (three-clause) BSD License

=cut

