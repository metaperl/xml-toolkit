package XML::Aiml::Category::Template::Random::Li::Srai::Star;
use Moose;
use MooseX::AttributeHelpers;

has 'text' => (
    isa         => 'Str',
    is          => 'rw',
    traits      => ['XML'],
    description => { sort_order => 0, },
);

no Moose;
1;
__END__