package XML::Aiml::Category::Template::Think::Condition::Set;
use Moose;
use MooseX::AttributeHelpers;

has 'get_collection' => (
    isa =>
      'ArrayRef[XML::Aiml::Category::Template::Think::Condition::Set::Get]',
    is          => 'ro',
    traits      => ['XML'],
    metaclass   => 'Collection::Array',
    lazy        => 1,
    auto_deref  => 1,
    default     => sub { [] },
    provides    => { push => 'get' },
    description => { sort_order => 0, },
);
has 'name' => (
    isa         => 'Str',
    is          => 'ro',
    traits      => ['XML'],
    description => {
        Prefix       => "",
        LocalName    => "name",
        node_type    => "attribute",
        Name         => "name",
        NamespaceURI => "",
        sort_order   => 1,
    },
);

no Moose;
1;
__END__