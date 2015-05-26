package ONVIF::Media::Types::ClassDescriptor;
use strict;
use warnings;


__PACKAGE__->_set_element_form_qualified(1);

sub get_xmlns { 'http://www.onvif.org/ver10/schema' };

our $XML_ATTRIBUTE_CLASS;
undef $XML_ATTRIBUTE_CLASS;

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}

use Class::Std::Fast::Storable constructor => 'none';
use base qw(SOAP::WSDL::XSD::Typelib::ComplexType);

Class::Std::initialize();

{ # BLOCK to scope variables

my %ClassCandidate_of :ATTR(:get<ClassCandidate>);
my %Extension_of :ATTR(:get<Extension>);

__PACKAGE__->_factory(
    [ qw(        ClassCandidate
        Extension

    ) ],
    {
        'ClassCandidate' => \%ClassCandidate_of,
        'Extension' => \%Extension_of,
    },
    {

        'ClassCandidate' => 'ONVIF::Media::Types::ClassDescriptor::_ClassCandidate',
        'Extension' => 'ONVIF::Media::Types::ClassDescriptorExtension',
    },
    {

        'ClassCandidate' => 'ClassCandidate',
        'Extension' => 'Extension',
    }
);

} # end BLOCK




package ONVIF::Media::Types::ClassDescriptor::_ClassCandidate;
use strict;
use warnings;
{
our $XML_ATTRIBUTE_CLASS;
undef $XML_ATTRIBUTE_CLASS;

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}

use Class::Std::Fast::Storable constructor => 'none';
use base qw(SOAP::WSDL::XSD::Typelib::ComplexType);

Class::Std::initialize();

{ # BLOCK to scope variables

my %Type_of :ATTR(:get<Type>);
my %Likelihood_of :ATTR(:get<Likelihood>);

__PACKAGE__->_factory(
    [ qw(        Type
        Likelihood

    ) ],
    {
        'Type' => \%Type_of,
        'Likelihood' => \%Likelihood_of,
    },
    {
        'Type' => 'ONVIF::Media::Types::ClassType',
        'Likelihood' => 'SOAP::WSDL::XSD::Typelib::Builtin::float',
    },
    {

        'Type' => 'Type',
        'Likelihood' => 'Likelihood',
    }
);

} # end BLOCK







}







1;


=pod

=head1 NAME

ONVIF::Media::Types::ClassDescriptor

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
ClassDescriptor from the namespace http://www.onvif.org/ver10/schema.






=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * ClassCandidate


=item * Extension




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():

 { # ONVIF::Media::Types::ClassDescriptor
   ClassCandidate =>  {
     Type => $some_value, # ClassType
     Likelihood =>  $some_value, # float
   },
   Extension =>  { # ONVIF::Media::Types::ClassDescriptorExtension
     OtherTypes =>  { # ONVIF::Media::Types::OtherType
       Type =>  $some_value, # string
       Likelihood =>  $some_value, # float
     },
     Extension =>  { # ONVIF::Media::Types::ClassDescriptorExtension2
     },
   },
 },




=head1 AUTHOR

Generated by SOAP::WSDL

=cut

