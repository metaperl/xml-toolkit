package XML::Toolkit::RNG::Grammar::Define::Interleave::Optional;
use Moose;
use MooseX::AttributeHelpers;

has 'element_collection' => (
    isa =>
'ArrayRef[XML::Toolkit::RNG::Grammar::Define::Interleave::Optional::Element]',
    is          => 'ro',
    metaclass   => 'Collection::Array',
    lazy        => 1,
    auto_deref  => 1,
    default     => sub { [] },
    provides    => { push => 'element' },
    description => { sort_order => 0, },
);

no Moose;
