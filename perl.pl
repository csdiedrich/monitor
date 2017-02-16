#!/usr/bin/perl
#
use Nagios::Config;

my $Parser = Nagios::Config->new(Filename => $ARGV[0], Version => 2);
my $Host = $Parser->find_object($ARGV[1],'Nagios::Host');

if ( defined $Host ) {
foreach my $Service ( $Host->list_services ) {
printf "%s\n", $Service->{'service_description'};
}
}
