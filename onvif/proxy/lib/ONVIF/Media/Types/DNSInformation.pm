package ONVIF::Media::Types::DNSInformation;
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

my %FromDHCP_of :ATTR(:get<FromDHCP>);
my %SearchDomain_of :ATTR(:get<SearchDomain>);
my %DNSFromDHCP_of :ATTR(:get<DNSFromDHCP>);
my %DNSManual_of :ATTR(:get<DNSManual>);
my %Extension_of :ATTR(:get<Extension>);

__PACKAGE__->_factory(
    [ qw(        FromDHCP
        SearchDomain
        DNSFromDHCP
        DNSManual
        Extension

    ) ],
    {
        'FromDHCP' => \%FromDHCP_of,
        'SearchDomain' => \%SearchDomain_of,
        'DNSFromDHCP' => \%DNSFromDHCP_of,
        'DNSManual' => \%DNSManual_of,
        'Extension' => \%Extension_of,
    },
    {
        'FromDHCP' => 'SOAP::WSDL::XSD::Typelib::Builtin::boolean',
        'SearchDomain' => 'SOAP::WSDL::XSD::Typelib::Builtin::token',
        'DNSFromDHCP' => 'ONVIF::Media::Types::IPAddress',
        'DNSManual' => 'ONVIF::Media::Types::IPAddress',
        'Extension' => 'ONVIF::Media::Types::DNSInformationExtension',
    },
    {

        'FromDHCP' => 'FromDHCP',
        'SearchDomain' => 'SearchDomain',
        'DNSFromDHCP' => 'DNSFromDHCP',
        'DNSManual' => 'DNSManual',
        'Extension' => 'Extension',
    }
);

} # end BLOCK








1;


=pod

=head1 NAME

ONVIF::Media::Types::DNSInformation

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
DNSInformation from the namespace http://www.onvif.org/ver10/schema.






=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * FromDHCP


=item * SearchDomain


=item * DNSFromDHCP


=item * DNSManual


=item * Extension




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():

 { # ONVIF::Media::Types::DNSInformation
   FromDHCP =>  $some_value, # boolean
   SearchDomain =>  $some_value, # token
   DNSFromDHCP =>  { # ONVIF::Media::Types::IPAddress
     Type => $some_value, # IPType
     IPv4Address => $some_value, # IPv4Address
     IPv6Address => $some_value, # IPv6Address
   },
   DNSManual =>  { # ONVIF::Media::Types::IPAddress
     Type => $some_value, # IPType
     IPv4Address => $some_value, # IPv4Address
     IPv6Address => $some_value, # IPv6Address
   },
   Extension =>  { # ONVIF::Media::Types::DNSInformationExtension
   },
 },




=head1 AUTHOR

Generated by SOAP::WSDL

=cut

