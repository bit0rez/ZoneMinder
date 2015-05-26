package ONVIF::Device::Types::FindPTZPositionResult;
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

my %RecordingToken_of :ATTR(:get<RecordingToken>);
my %TrackToken_of :ATTR(:get<TrackToken>);
my %Time_of :ATTR(:get<Time>);
my %Position_of :ATTR(:get<Position>);

__PACKAGE__->_factory(
    [ qw(        RecordingToken
        TrackToken
        Time
        Position

    ) ],
    {
        'RecordingToken' => \%RecordingToken_of,
        'TrackToken' => \%TrackToken_of,
        'Time' => \%Time_of,
        'Position' => \%Position_of,
    },
    {
        'RecordingToken' => 'ONVIF::Device::Types::RecordingReference',
        'TrackToken' => 'ONVIF::Device::Types::TrackReference',
        'Time' => 'SOAP::WSDL::XSD::Typelib::Builtin::dateTime',
        'Position' => 'ONVIF::Device::Types::PTZVector',
    },
    {

        'RecordingToken' => 'RecordingToken',
        'TrackToken' => 'TrackToken',
        'Time' => 'Time',
        'Position' => 'Position',
    }
);

} # end BLOCK








1;


=pod

=head1 NAME

ONVIF::Device::Types::FindPTZPositionResult

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
FindPTZPositionResult from the namespace http://www.onvif.org/ver10/schema.






=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * RecordingToken


=item * TrackToken


=item * Time


=item * Position




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():

 { # ONVIF::Device::Types::FindPTZPositionResult
   RecordingToken => $some_value, # RecordingReference
   TrackToken => $some_value, # TrackReference
   Time =>  $some_value, # dateTime
   Position =>  { # ONVIF::Device::Types::PTZVector
     PanTilt => ,
     Zoom => ,
   },
 },




=head1 AUTHOR

Generated by SOAP::WSDL

=cut

