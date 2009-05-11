package XML::Aiml::Category::Template::Condition::Li::Srai::Srai;
use Moose;
use MooseX::AttributeHelpers;

has 'get_collection' => (
    isa =>
      'ArrayRef[XML::Aiml::Category::Template::Condition::Li::Srai::Srai::Get]',
    is          => 'ro',
    traits      => ['XML'],
    metaclass   => 'Collection::Array',
    lazy        => 1,
    auto_deref  => 1,
    default     => sub { [] },
    provides    => { push => 'get' },
    description => { sort_order => 0, },
);
has 'star_collection' => (
    isa =>
'ArrayRef[XML::Aiml::Category::Template::Condition::Li::Srai::Srai::Star]',
    is          => 'ro',
    traits      => ['XML'],
    metaclass   => 'Collection::Array',
    lazy        => 1,
    auto_deref  => 1,
    default     => sub { [] },
    provides    => { push => 'star' },
    description => { sort_order => 1, },
);
has 'text' => (
    isa         => 'Str',
    is          => 'rw',
    traits      => ['XML'],
    description => { sort_order => 2, },
);

no Moose;
1;
__END__

=head1 NAME

XML::Aiml::Category::Template::Condition::Li::Srai::Srai - A class to ...

=head1 VERSION

This documentation refers to version 0.01.

=head1 SYNOPSIS

use XML::Aiml::Category::Template::Condition::Li::Srai::Srai;

=head1 DESCRIPTION

The XML::Aiml::Category::Template::Condition::Li::Srai::Srai class implements ...

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
