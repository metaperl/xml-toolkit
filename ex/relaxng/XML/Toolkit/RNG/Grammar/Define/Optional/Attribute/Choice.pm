package XML::Toolkit::RNG::Grammar::Define::Optional::Attribute::Choice;
use Moose;
use MooseX::AttributeHelpers;

has 'value_collection' => (
    isa =>
'ArrayRef[XML::Toolkit::RNG::Grammar::Define::Optional::Attribute::Choice::Value]',
    is          => 'ro',
    traits      => ['MooseX::MetaDescription::Meta::Trait'],
    metaclass   => 'Collection::Array',
    lazy        => 1,
    auto_deref  => 1,
    default     => sub { [] },
    provides    => { push => 'value' },
    description => { sort_order => 0, },
);

no Moose;
1;
__END__