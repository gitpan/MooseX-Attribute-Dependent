#
# This file is part of MooseX-Attribute-Dependent
#
# This software is Copyright (c) 2010 by Moritz Onken.
#
# This is free software, licensed under:
#
#   The (three-clause) BSD License
#
package MooseX::Attribute::Dependent::Meta::Role::Attribute;
BEGIN {
  $MooseX::Attribute::Dependent::Meta::Role::Attribute::VERSION = '1.0.0';
}
use strict;
use warnings;
use Moose::Role;

has dependency => ( predicate => 'has_dependency', is => 'ro' );

before initialize_instance_slot => sub {
    my ( $self, $meta_instance, $instance, $params ) = @_;
    return unless ( exists $params->{$self->init_arg} && (my $dep = $self->dependency) );
    $self->throw_error( $dep->get_message, object => $instance )
      unless ( $dep->constraint->( $self->init_arg, $params, @{ $dep->parameters } ) );
};

override accessor_metaclass => sub { 
    my $class = super();
    return Moose::Meta::Class->create_anon_class(
        superclasses => [$class],
        roles => ['MooseX::Attribute::Dependent::Meta::Role::Method::Accessor'],
        cache => 1
    )->name;
    
};

1;

__END__
=pod

=head1 NAME

MooseX::Attribute::Dependent::Meta::Role::Attribute

=head1 VERSION

version 1.0.0

=head1 AUTHOR

Moritz Onken

=head1 COPYRIGHT AND LICENSE

This software is Copyright (c) 2010 by Moritz Onken.

This is free software, licensed under:

  The (three-clause) BSD License

=cut

