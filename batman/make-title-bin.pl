#!/usr/bin/perl
sub printline {
	my $x = shift;
	chomp $x;
	$x .= "\0" x 32;
	$x = substr $x, 0, 32;
	$x =~ s/(.)/\0$1/g;

	print $x;
}

$name = '"Bathaxx" by lewurm';
$version = `cat ../.version`;

printline $name;
printline $version;
