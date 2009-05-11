package XML::Aiml::Category::Template::Think::Set::Person;
use Moose;
use MooseX::AttributeHelpers;

has 'star_collection' => (
    isa => 'ArrayRef[XML::Aiml::Category::Template::Think::Set::Person::Star]',
    is  => 'ro',
    traits      => ['XML'],
    metaclass   => 'Collection::Array',
    lazy        => 1,
    auto_deref  => 1,
    default     => sub { [] },
    provides    => { push => 'star' },
    description => { sort_order => 0, },
);

no Moose;
1;
__END__

=head1 NAME

XML::Aiml::Category::Template::Think::Set::Person - A class to ...

=head1 VERSION

This documentation refers to version 0.01.

=head1 SYNOPSIS

use XML::Aiml::Category::Template::Think::Set::Person;

=head1 DESCRIPTION

The XML::Aiml::Category::Template::Think::Set::Person class implements ...

=head1 SUBROUTINES / METHODS

=head1 DEPENDENCIES

Modules used, version dependencies, core yes/no

Moose

MooseX::AttributeHelpers

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
