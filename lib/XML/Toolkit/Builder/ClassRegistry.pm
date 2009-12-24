package XML::Toolkit::Builder::ClassRegistry;
use Moose::Role;

has namespace => (
    isa        => 'Str',
    is         => 'ro',
    lazy_build => 1,
);

has registry => (
    isa        => 'HashRef',
    is         => 'ro',
    lazy       => 1,
    default    => sub { {} },
    auto_deref => 1,
    metaclass  => 'Collection::Hash',
    provides   => {
        set    => 'add_class',
        values => 'classes',
        keys   => 'class_names',
        get    => 'get_class',
        exists => 'has_class',
    }
);


no Moose::Role; 
1;

__END__

=head1 NAME

XML::Toolkit::Builder::ClassRegistry - A class to ...

=head1 VERSION

This documentation refers to version 0.01.

=head1 SYNOPSIS

use XML::Toolkit::Builder::ClassRegistry;

=head1 DESCRIPTION

The XML::Toolkit::Builder::ClassRegistry class implements ...

=head1 SUBROUTINES / METHODS

=head1 DEPENDENCIES

Modules used, version dependencies, core yes/no

Moose::Role

=head1 NOTES

...

=head1 BUGS AND LIMITATIONS

None known currently, please email the author if you find any.

=head1 AUTHOR

Chris Prather (perigrin@domain.tld)

=head1 LICENCE

Copyright 2009 by Chris Prather.

This software is free.  It is licensed under the same terms as Perl itself.

=cut