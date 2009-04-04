package XML::Toolkit::RNG::Grammar::Define::Choice::Element::Interleave::Group::ZeroOrMore;
use Moose;
use MooseX::AttributeHelpers;

has 'element_collection' => (
    isa =>
'ArrayRef[XML::Toolkit::RNG::Grammar::Define::Choice::Element::Interleave::Group::ZeroOrMore::Element]',
    is          => 'ro',
    metaclass   => 'Collection::Array',
    lazy        => 1,
    auto_deref  => 1,
    default     => sub { [] },
    provides    => { push => 'element' },
    description => { sort_order => 0, },
);

no Moose;
