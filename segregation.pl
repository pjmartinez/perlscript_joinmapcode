#!/usr/bin/perl
use strict;
use warnings;
use Data::Dumper;

##########################
#this script change Genotyping call to joinmap code for 
# a F1 population
#PJMG 2014
#############################


my $file = "qtl.csv";
open(FILE, $file);
print "snpname\tfemale\tmale\tsegregation";
my $i = 0;
while(my $line = <FILE>) {
	if($i == 0) {
		## split the sample names on commas
		## we print here
		## print $samleName
		## do nothing on the first line
		chomp($line);
		my @split = split(/,/, $line);
		for(my $j = 3; $j < @split; $j++) {
			my $samplesname = $split[$j];
			print "\t$samplesname";
		}
		print "\n";
	} else {
		chomp($line);
		my @split = split(/,/, $line);
		my $snpName = $split[0];
		my $female = $split[1];
		my $male = $split[2];
		my $segregation; 

		## For Testing what is in an array
		#print Dumper(\@split);

		#print "$line\n";
		print "$snpName\t$female\t$male\t";

		if($female eq "AB" && $male eq "BB") {
			$segregation = "<lmxll>";
			print "$segregation\t";
		} elsif ($female eq "AB" && $male eq "AA") {
			$segregation = "<lmxll>";
			print "$segregation\t";
		} elsif ($female eq "AA" && $male eq "AB") {
			$segregation = "<nnxnp>";
			print "$segregation\t";
		} elsif ($female eq "BB" && $male eq "AB") {
			$segregation = "<nnxnp>";
			print "$segregation\t";
		} elsif ($female eq "AB" && $male eq "AB") {
			$segregation = "<hkxhk>";
			print "$segregation\t";
		} elsif ($female eq "17" && $male eq "27") {
			$segregation = "<efxeg>";
			print "$segregation\t";
		} elsif ($female eq "34" && $male eq "23") {
			$segregation = "<efxeg>";
			print "$segregation\t";
		} elsif ($female eq "12" && $male eq "22") {
			$segregation = "<lmxll>";
			print "$segregation\t";
		} elsif ($female eq "1x" && $male eq "xx") {
			$segregation = "<lmxll>";
			print "$segregation\t";
		} elsif ($female eq "34" && $male eq "22") {
			$segregation = "<lmxll>";
			print "$segregation\t";
		} elsif ($female eq "23" && $male eq "14") {
			$segregation = "<abxcd>";
			print "$segregation\t";
		} elsif ($female eq "13" && $male eq "23") {
			$segregation = "<efxeg>";
			print "$segregation\t";
		} elsif ($female eq "14" && $male eq "23") {
			$segregation = "<abxcd>";
			print "$segregation\t";
		} elsif ($female eq "12" && $male eq "24") {
			$segregation = "<efxeg>";
			print "$segregation\t";
		} elsif ($female eq "34" && $male eq "12") {
			$segregation = "<abxcd>";
			print "$segregation\t";
		} elsif ($female eq "12" && $male eq "13") {
			$segregation = "<efxeg>";
			print "$segregation\t";
		} elsif ($female eq "12" && $male eq "33") {
			$segregation = "<lmxll>";
			print "$segregation\t";
		} elsif ($female eq "13" && $male eq "25") {
			$segregation = "<abxcd>";
			print "$segregation\t";
		} elsif ($female eq "12" && $male eq "23") {
			$segregation = "<efxeg>";
			print "$segregation\t";
		} elsif ($female eq "13" && $male eq "12") {
			$segregation = "<efxeg>";
			print "$segregation\t";
		} elsif ($female eq "23" && $male eq "13") {
			$segregation = "<efxeg>";
			print "$segregation\t";
		} elsif ($female eq "44" && $male eq "45") {
			$segregation = "<nnxnp>";
			print "$segregation\t";
		} elsif ($female eq "11" && $male eq "13") {
			$segregation = "<nnxnp>";
			print "$segregation\t";
		} elsif ($female eq "25" && $male eq "14") {
			$segregation = "<abxcd>";
			print "$segregation\t";
		} elsif ($female eq "13" && $male eq "24") {
			$segregation = "<abxcd>";
			print "$segregation\t";
		} elsif ($female eq "35" && $male eq "25") {
			$segregation = "<efxeg>";
			print "$segregation\t";
		} elsif ($female eq "11" && $male eq "12") {
			$segregation = "<nnxnp>";
			print "$segregation\t";
		} elsif ($female eq "xx" && $male eq "1x") {
			$segregation = "<nnxnp>";
			print "$segregation\t";
		} elsif ($female eq "22" && $male eq "12") {
			$segregation = "<nnxnp>";
			print "$segregation\t";
		} elsif ($female eq "12" && $male eq "11") {
			$segregation = "<lmxll>";
			print "$segregation\t";
		} elsif ($female eq "12" && $male eq "12") {
			$segregation = "<hkxhk>";
			print "$segregation\t";
		} elsif ($female eq "35" && $male eq "44") {
			$segregation = "<lmxll>";
			print "$segregation\t";
		} elsif ($female eq "23" && $male eq "23") {
			$segregation = "<hkxhk>";
			print "$segregation\t";
		} elsif ($female eq "2x" && $male eq "2x") {
			$segregation = "<hkxhk>";
			print "$segregation\t";
		} elsif ($female eq "11" && $male eq "23") {
			$segregation = "<nnxnp>";
			print "$segregation\t";
		} elsif ($female eq "12" && $male eq "34") {
			$segregation = "<abxcd>";
			print "$segregation\t";
		} elsif ($female eq "24" && $male eq "13") {
			$segregation = "<abxcd>";
			print "$segregation\t";
		} elsif ($female eq "23" && $male eq "12") {
			$segregation = "<efxeg>";
			print "$segregation\t";
		} elsif ($female eq "xx" && $male eq "12") {
			$segregation = "<nnxnp>";
			print "$segregation\t";
		} elsif ($female eq "5x" && $male eq "xx") {
			$segregation = "<lmxll>";
			print "$segregation\t";
		} elsif ($female eq "11" && $male eq "14") {
			$segregation = "<nnxnp>";
			print "$segregation\t";
		} elsif ($female eq "24" && $male eq "23") {
			$segregation = "<efxeg>";
			print "$segregation\t";
		} elsif ($female eq "23" && $male eq "11") {
			$segregation = "<lmxll>";
			print "$segregation\t";
		} elsif ($female eq "22" && $male eq "23") {
			$segregation = "<nnxnp>";
			print "$segregation\t";
		} elsif ($female eq "23" && $male eq "1x") {
			$segregation = "<abxcd>";
			print "$segregation\t";
		} elsif ($female eq "14" && $male eq "24") {
			$segregation = "<efxeg>";
			print "$segregation\t";
		} elsif ($female eq "xx" && $male eq "12") {
			$segregation = "<nnxnp>";
			print "$segregation\t";
		} elsif ($female eq "13" && $male eq "14") {
			$segregation = "<efxeg>";
			print "$segregation\t";
		} elsif ($female eq "13" && $male eq "88") {
			$segregation = "<lmxll>";
			print "$segregation\t";
		} elsif ($female eq "13" && $male eq "22") {
			$segregation = "<lmxll>";
			print "$segregation\t";
		} elsif ($female eq "34" && $male eq "44") {
			$segregation = "<lmxll>";
			print "$segregation\t";
		} elsif ($female eq "24" && $male eq "34") {
			$segregation = "<efxeg>";
			print "$segregation\t";
		} elsif ($female eq "33" && $male eq "12") {
			$segregation = "<nnxnp>";
			print "$segregation\t";
		} elsif ($female eq "12" && $male eq "43") {
			$segregation = "<abxcd>";
			print "$segregation\t";
		} elsif ($female eq "12" && $male eq "3x") {
			$segregation = "<abxcd>";
			print "$segregation\t";
		} elsif ($female eq "12" && $male eq "xx") {
			$segregation = "<lmxll>";
			print "$segregation\t";
		} elsif ($female eq "15" && $male eq "44") {
			$segregation = "<lmxll>";
			print "$segregation\t";
		} elsif ($female eq "33" && $male eq "13") {
			$segregation = "<nnxnp>";
			print "$segregation\t";
		} elsif ($female eq "xx" && $male eq "2x") {
			$segregation = "<nnxnp>";
			print "$segregation\t";
		} elsif ($female eq "14" && $male eq "34") {
			$segregation = "<efxeg>";
			print "$segregation\t";
		} elsif ($female eq "22" && $male eq "13") {
			$segregation = "<nnxnp>";
			print "$segregation\t";
		} elsif ($female eq "13" && $male eq "11") {
			$segregation = "<lmxll>";
			print "$segregation\t";
		} elsif ($female eq "34" && $male eq "25") {
			$segregation = "<abxcd>";
			print "$segregation\t";
		} elsif ($female eq "2x" && $male eq "xx") {
			$segregation = "<lmxll>";
			print "$segregation\t";
		} elsif ($female eq "18" && $male eq "56") {
			$segregation = "<abxcd>";
			print "$segregation\t";
		} elsif ($female eq "2x" && $male eq "11") {
			$segregation = "<lmxll>";
			print "$segregation\t";
		} elsif ($female eq "23" && $male eq "33") {
			$segregation = "<lmxll>";
			print "$segregation\t";
		} elsif ($female eq "16" && $male eq "11") {
			$segregation = "<lmxll>";
			print "$segregation\t";
		} elsif ($female eq "13" && $male eq "25") {
			$segregation = "<abxcd>";
			print "$segregation\t";
		} elsif ($female eq "14" && $male eq "35") {
			$segregation = "<abxcd>";
			print "$segregation\t";
		} else {
			print STDERR "\nerror line $i: segregation not match\n";
		} 
	
		#for loop to keep reading the end of the split line
		for(my $j = 3; $j < @split; $j++) {
			my $genotype = $split[$j];

			if($female eq "AB" && $male eq "BB" && $genotype eq "AB") {
				$genotype = "lm";
				print "$genotype\t";
			} elsif ($female eq "AB" && $male eq "BB" && $genotype eq "BB") {
				$genotype = "ll";
				print "$genotype\t";
			} elsif ($female eq "AB" && $male eq "AA" && $genotype eq "AB") {
				$genotype = "lm";
				print "$genotype\t";
			} elsif ($female eq "AB" && $male eq "AA" && $genotype eq "AA") {
				$genotype = "ll";
				print "$genotype\t";
			} elsif ($female eq "AA" && $male eq "AB" && $genotype eq "AB") {
				$genotype = "np";
				print "$genotype\t";
			} elsif ($female eq "AA" && $male eq "AB" && $genotype eq "AA") {
				$genotype = "nn";
				print "$genotype\t";
			} elsif ($female eq "BB" && $male eq "AB" && $genotype eq "AB") {
				$genotype = "np";
				print "$genotype\t";
			} elsif ($female eq "BB" && $male eq "AB" && $genotype eq "BB") {
				$genotype = "nn";
				print "$genotype\t";
			} elsif ($female eq "AB" && $male eq "AB" && $genotype eq "AB") {
				$genotype = "hk";
				print "$genotype\t";
			} elsif ($female eq "AB" && $male eq "AB" && $genotype eq "BB") {
				$genotype = "kk";
				print "$genotype\t";
			} elsif ($female eq "AB" && $male eq "AB" && $genotype eq "AA") {
				$genotype = "hh";
				print "$genotype\t";
			} elsif ($female eq "23" && $male eq "14" && $genotype eq "12") {
				$genotype = "ac";
				print "$genotype\t";
			} elsif ($female eq "23" && $male eq "14" && $genotype eq "24") {
				$genotype = "ad";
				print "$genotype\t";
			} elsif ($female eq "23" && $male eq "14" && $genotype eq "13") {
				$genotype = "bc";
				print "$genotype\t";
			} elsif ($female eq "23" && $male eq "14" && $genotype eq "34") {
				$genotype = "bd";
				print "$genotype\t";
			} elsif ($female eq "14" && $male eq "23" && $genotype eq "12") {
				$genotype = "ac";
				print "$genotype\t";
			} elsif ($female eq "14" && $male eq "23" && $genotype eq "13") {
				$genotype = "ad";
				print "$genotype\t";
			} elsif ($female eq "14" && $male eq "23" && $genotype eq "24") {
				$genotype = "bc";
				print "$genotype\t";
			} elsif ($female eq "14" && $male eq "23" && $genotype eq "34") {
				$genotype = "bd";
				print "$genotype\t";
			} elsif ($female eq "34" && $male eq "12" && $genotype eq "13") {
				$genotype = "ac";
				print "$genotype\t";
			} elsif ($female eq "34" && $male eq "12" && $genotype eq "23") {
				$genotype = "ad";
				print "$genotype\t";
			} elsif ($female eq "34" && $male eq "12" && $genotype eq "14") {
				$genotype = "bc";
				print "$genotype\t";
			} elsif ($female eq "34" && $male eq "12" && $genotype eq "24") {
				$genotype = "bd";
				print "$genotype\t";
			} elsif ($female eq "25" && $male eq "14" && $genotype eq "12") {
				$genotype = "ac";
				print "$genotype\t";
			} elsif ($female eq "25" && $male eq "14" && $genotype eq "24") {
				$genotype = "ad";
				print "$genotype\t";
			} elsif ($female eq "25" && $male eq "14" && $genotype eq "15") {
				$genotype = "bc";
				print "$genotype\t";
			} elsif ($female eq "25" && $male eq "14" && $genotype eq "45") {
				$genotype = "bd";
				print "$genotype\t";
			} elsif ($female eq "13" && $male eq "24" && $genotype eq "12") {
				$genotype = "ac";
				print "$genotype\t";
			} elsif ($female eq "13" && $male eq "24" && $genotype eq "14") {
				$genotype = "ad";
				print "$genotype\t";
			} elsif ($female eq "13" && $male eq "24" && $genotype eq "23") {
				$genotype = "bc";
				print "$genotype\t";
			} elsif ($female eq "13" && $male eq "24" && $genotype eq "34") {
				$genotype = "bd";
				print "$genotype\t";
			} elsif ($female eq "12" && $male eq "34" && $genotype eq "13") {
				$genotype = "ac";
				print "$genotype\t";
			} elsif ($female eq "12" && $male eq "34" && $genotype eq "14") {
				$genotype = "ad";
				print "$genotype\t";
			} elsif ($female eq "12" && $male eq "34" && $genotype eq "23") {
				$genotype = "bc";
				print "$genotype\t";
			} elsif ($female eq "12" && $male eq "34" && $genotype eq "24") {
				$genotype = "bd";
				print "$genotype\t";
			} elsif ($female eq "24" && $male eq "13" && $genotype eq "12") {
				$genotype = "ac";
				print "$genotype\t";
			} elsif ($female eq "24" && $male eq "13" && $genotype eq "23") {
				$genotype = "ad";
				print "$genotype\t";
			} elsif ($female eq "24" && $male eq "13" && $genotype eq "14") {
				$genotype = "bc";
				print "$genotype\t";
			} elsif ($female eq "24" && $male eq "13" && $genotype eq "34") {
				$genotype = "bd";
				print "$genotype\t";
			} elsif ($female eq "17" && $male eq "27" && $genotype eq "77") {
				$genotype = "ee";
				print "$genotype\t";
			} elsif ($female eq "17" && $male eq "27" && $genotype eq "27") {
				$genotype = "eg";
				print "$genotype\t";
			} elsif ($female eq "17" && $male eq "27" && $genotype eq "17") {
				$genotype = "ef";
				print "$genotype\t";
			} elsif ($female eq "17" && $male eq "27" && $genotype eq "12") {
				$genotype = "fg";
				print "$genotype\t";
			} elsif ($female eq "34" && $male eq "23" && $genotype eq "33") {
				$genotype = "ee";
				print "$genotype\t";
			} elsif ($female eq "34" && $male eq "23" && $genotype eq "23") {
				$genotype = "eg";
				print "$genotype\t";
			} elsif ($female eq "34" && $male eq "23" && $genotype eq "34") {
				$genotype = "ef";
				print "$genotype\t";
			} elsif ($female eq "34" && $male eq "23" && $genotype eq "24") {
				$genotype = "fg";
				print "$genotype\t";
			} elsif ($female eq "13" && $male eq "23" && $genotype eq "33") {
				$genotype = "ee";
				print "$genotype\t";
			} elsif ($female eq "13" && $male eq "23" && $genotype eq "23") {
				$genotype = "eg";
				print "$genotype\t";
			} elsif ($female eq "13" && $male eq "23" && $genotype eq "13") {
				$genotype = "ef";
				print "$genotype\t";
			} elsif ($female eq "13" && $male eq "23" && $genotype eq "12") {
				$genotype = "fg";
				print "$genotype\t";
			} elsif ($female eq "12" && $male eq "24" && $genotype eq "22") {
				$genotype = "ee";
				print "$genotype\t";
			} elsif ($female eq "12" && $male eq "24" && $genotype eq "12") {
				$genotype = "ef";
				print "$genotype\t";
			} elsif ($female eq "12" && $male eq "24" && $genotype eq "24") {
				$genotype = "eg";
				print "$genotype\t";
			} elsif ($female eq "12" && $male eq "24" && $genotype eq "14") {
				$genotype = "fg";
				print "$genotype\t";
			} elsif ($female eq "12" && $male eq "13" && $genotype eq "11") {
				$genotype = "ee";
				print "$genotype\t";
			} elsif ($female eq "12" && $male eq "13" && $genotype eq "12") {
				$genotype = "eg";
				print "$genotype\t";
			} elsif ($female eq "12" && $male eq "13" && $genotype eq "13") {
				$genotype = "ef";
				print "$genotype\t";
			} elsif ($female eq "12" && $male eq "13" && $genotype eq "23") {
				$genotype = "fg";
				print "$genotype\t";
			} elsif ($female eq "13" && $male eq "12" && $genotype eq "11") {
				$genotype = "ee";
				print "$genotype\t";
			} elsif ($female eq "13" && $male eq "12" && $genotype eq "12") {
				$genotype = "eg";
				print "$genotype\t";
			} elsif ($female eq "13" && $male eq "12" && $genotype eq "13") {
				$genotype = "ef";
				print "$genotype\t";
			} elsif ($female eq "13" && $male eq "12" && $genotype eq "23") {
				$genotype = "fg";
				print "$genotype\t";
			} elsif ($female eq "12" && $male eq "23" && $genotype eq "22") {
				$genotype = "ee";
				print "$genotype\t";
			} elsif ($female eq "12" && $male eq "23" && $genotype eq "23") {
				$genotype = "eg";
				print "$genotype\t";
			} elsif ($female eq "12" && $male eq "23" && $genotype eq "12") {
				$genotype = "ef";
				print "$genotype\t";
			} elsif ($female eq "12" && $male eq "23" && $genotype eq "13") {
				$genotype = "fg";
				print "$genotype\t";
			} elsif ($female eq "23" && $male eq "13" && $genotype eq "33") {
				$genotype = "ee";
				print "$genotype\t";
			} elsif ($female eq "23" && $male eq "13" && $genotype eq "13") {
				$genotype = "eg";
				print "$genotype\t";
			} elsif ($female eq "23" && $male eq "13" && $genotype eq "23") {
				$genotype = "ef";
				print "$genotype\t";
			} elsif ($female eq "23" && $male eq "13" && $genotype eq "12") {
				$genotype = "fg";
				print "$genotype\t";
			} elsif ($female eq "35" && $male eq "25" && $genotype eq "55") {
				$genotype = "ee";
				print "$genotype\t";
			} elsif ($female eq "35" && $male eq "25" && $genotype eq "25") {
				$genotype = "eg";
				print "$genotype\t";
			} elsif ($female eq "35" && $male eq "25" && $genotype eq "35") {
				$genotype = "ef";
				print "$genotype\t";
			} elsif ($female eq "35" && $male eq "25" && $genotype eq "23") {
				$genotype = "fg";
				print "$genotype\t";
			} elsif ($female eq "23" && $male eq "12" && $genotype eq "22") {
				$genotype = "ee";
				print "$genotype\t";
			} elsif ($female eq "23" && $male eq "12" && $genotype eq "12") {
				$genotype = "eg";
				print "$genotype\t";
			} elsif ($female eq "23" && $male eq "12" && $genotype eq "23") {
				$genotype = "ef";
				print "$genotype\t";
			} elsif ($female eq "23" && $male eq "12" && $genotype eq "13") {
				$genotype = "fg";
				print "$genotype\t";
			} elsif ($female eq "24" && $male eq "23" && $genotype eq "22") {
				$genotype = "ee";
				print "$genotype\t";
			} elsif ($female eq "24" && $male eq "23" && $genotype eq "23") {
				$genotype = "eg";
				print "$genotype\t";
			} elsif ($female eq "24" && $male eq "23" && $genotype eq "24") {
				$genotype = "ef";
				print "$genotype\t";
			} elsif ($female eq "24" && $male eq "23" && $genotype eq "34") {
				$genotype = "fg";
				print "$genotype\t";
			} elsif ($female eq "14" && $male eq "24" && $genotype eq "44") {
				$genotype = "ee";
				print "$genotype\t";
			} elsif ($female eq "14" && $male eq "24" && $genotype eq "24") {
				$genotype = "eg";
				print "$genotype\t";
			} elsif ($female eq "14" && $male eq "24" && $genotype eq "14") {
				$genotype = "ef";
				print "$genotype\t";
			} elsif ($female eq "14" && $male eq "24" && $genotype eq "12") {
				$genotype = "fg";
				print "$genotype\t";
			} elsif ($female eq "13" && $male eq "14" && $genotype eq "11") {
				$genotype = "ee";
				print "$genotype\t";
			} elsif ($female eq "13" && $male eq "14" && $genotype eq "13") {
				$genotype = "ef";
				print "$genotype\t";
			} elsif ($female eq "13" && $male eq "14" && $genotype eq "14") {
				$genotype = "eg";
				print "$genotype\t";
			} elsif ($female eq "13" && $male eq "14" && $genotype eq "34") {
				$genotype = "fg";
				print "$genotype\t";
			} elsif ($female eq "12" && $male eq "12" && $genotype eq "11") {
				$genotype = "hh";
				print "$genotype\t";
			} elsif ($female eq "12" && $male eq "12" && $genotype eq "12") {
				$genotype = "hk";
				print "$genotype\t";
			} elsif ($female eq "12" && $male eq "12" && $genotype eq "22") {
				$genotype = "kk";
				print "$genotype\t";
			} elsif ($female eq "23" && $male eq "23" && $genotype eq "22") {
				$genotype = "hh";
				print "$genotype\t";
			} elsif ($female eq "23" && $male eq "23" && $genotype eq "23") {
				$genotype = "hk";
				print "$genotype\t";
			} elsif ($female eq "23" && $male eq "23" && $genotype eq "33") {
				$genotype = "kk";
				print "$genotype\t";
			} elsif ($female eq "2x" && $male eq "2x" && $genotype eq "22") {
				$genotype = "hh";
				print "$genotype\t";
			} elsif ($female eq "2x" && $male eq "2x" && $genotype eq "2x") {
				$genotype = "hk";
				print "$genotype\t";
			} elsif ($female eq "2x" && $male eq "2x" && $genotype eq "xx") {
				$genotype = "kk";
				print "$genotype\t";
			} elsif ($female eq "12" && $male eq "22" && $genotype eq "12") {
				$genotype = "lm";
				print "$genotype\t";
			} elsif ($female eq "12" && $male eq "22" && $genotype eq "22") {
				$genotype = "ll";
				print "$genotype\t";
			} elsif ($female eq "1x" && $male eq "xx" && $genotype eq "1x") {
				$genotype = "lm";
				print "$genotype\t";
			} elsif ($female eq "1x" && $male eq "xx" && $genotype eq "xx") {
				$genotype = "ll";
				print "$genotype\t";
			} elsif ($female eq "34" && $male eq "22" && $genotype eq "24") {
				$genotype = "lm";
				print "$genotype\t";
			} elsif ($female eq "34" && $male eq "22" && $genotype eq "23") {
				$genotype = "ll";
				print "$genotype\t";
			} elsif ($female eq "12" && $male eq "33" && $genotype eq "23") {
				$genotype = "lm";
				print "$genotype\t";
			} elsif ($female eq "12" && $male eq "33" && $genotype eq "13") {
				$genotype = "ll";
				print "$genotype\t";
			} elsif ($female eq "12" && $male eq "11" && $genotype eq "12") {
				$genotype = "lm";
				print "$genotype\t";
			} elsif ($female eq "12" && $male eq "11" && $genotype eq "11") {
				$genotype = "ll";
				print "$genotype\t";
			} elsif ($female eq "35" && $male eq "44" && $genotype eq "45") {
				$genotype = "lm";
				print "$genotype\t";
			} elsif ($female eq "35" && $male eq "44" && $genotype eq "34") {
				$genotype = "ll";
				print "$genotype\t";
			} elsif ($female eq "5x" && $male eq "xx" && $genotype eq "5x") {
				$genotype = "lm";
				print "$genotype\t";
			} elsif ($female eq "5x" && $male eq "xx" && $genotype eq "xx") {
				$genotype = "ll";
				print "$genotype\t";
			} elsif ($female eq "23" && $male eq "11" && $genotype eq "13") {
				$genotype = "lm";
				print "$genotype\t";
			} elsif ($female eq "23" && $male eq "11" && $genotype eq "12") {
				$genotype = "ll";
				print "$genotype\t";
			} elsif ($female eq "44" && $male eq "45" && $genotype eq "44") {
				$genotype = "nn";
				print "$genotype\t";
			} elsif ($female eq "44" && $male eq "45" && $genotype eq "45") {
				$genotype = "np";
				print "$genotype\t";
			} elsif ($female eq "11" && $male eq "13" && $genotype eq "11") {
				$genotype = "nn";
				print "$genotype\t";
			} elsif ($female eq "11" && $male eq "13" && $genotype eq "13") {
				$genotype = "np";
				print "$genotype\t";
			} elsif ($female eq "11" && $male eq "12" && $genotype eq "11") {
				$genotype = "nn";
				print "$genotype\t";
			} elsif ($female eq "11" && $male eq "12" && $genotype eq "12") {
				$genotype = "np";
				print "$genotype\t";
			} elsif ($female eq "xx" && $male eq "1x" && $genotype eq "xx") {
				$genotype = "nn";
				print "$genotype\t";
			} elsif ($female eq "xx" && $male eq "1x" && $genotype eq "1x") {
				$genotype = "np";
				print "$genotype\t";
			} elsif ($female eq "22" && $male eq "12" && $genotype eq "22") {
				$genotype = "nn";
				print "$genotype\t";
			} elsif ($female eq "22" && $male eq "12" && $genotype eq "12") {
				$genotype = "np";
				print "$genotype\t";
			} elsif ($female eq "11" && $male eq "23" && $genotype eq "12") {
				$genotype = "nn";
				print "$genotype\t";
			} elsif ($female eq "11" && $male eq "23" && $genotype eq "13") {
				$genotype = "np";
				print "$genotype\t";
			} elsif ($female eq "xx" && $male eq "12" && $genotype eq "1x") {
				$genotype = "nn";
				print "$genotype\t";
			} elsif ($female eq "xx" && $male eq "12" && $genotype eq "2x") {
				$genotype = "np";
				print "$genotype\t";
			} elsif ($female eq "11" && $male eq "14" && $genotype eq "11") {
				$genotype = "nn";
				print "$genotype\t";
			} elsif ($female eq "11" && $male eq "14" && $genotype eq "14") {
				$genotype = "np";
				print "$genotype\t";
			} elsif ($female eq "22" && $male eq "23" && $genotype eq "23") {
				$genotype = "np";
				print "$genotype\t";
			} elsif ($female eq "22" && $male eq "23" && $genotype eq "22") {
				$genotype = "nn";
				print "$genotype\t";
			} elsif ($female eq "23" && $male eq "1x" && $genotype eq "12") {
				$genotype = "ac";
				print "$genotype\t";
			} elsif ($female eq "23" && $male eq "1x" && $genotype eq "2x") {
				$genotype = "ad";
				print "$genotype\t";
			} elsif ($female eq "23" && $male eq "1x" && $genotype eq "13") {
				$genotype = "bc";
				print "$genotype\t";
			} elsif ($female eq "23" && $male eq "1x" && $genotype eq "3x") {
				$genotype = "bd";
				print "$genotype\t";
			} elsif ($female eq "12" && $male eq "3x" && $genotype eq "13") {
				$genotype = "ac";
				print "$genotype\t";
			} elsif ($female eq "12" && $male eq "3x" && $genotype eq "1x") {
				$genotype = "ad";
				print "$genotype\t";
			} elsif ($female eq "12" && $male eq "3x" && $genotype eq "23") {
				$genotype = "bc";
				print "$genotype\t";
			} elsif ($female eq "12" && $male eq "3x" && $genotype eq "2x") {
				$genotype = "bd";
				print "$genotype\t";
			} elsif ($female eq "12" && $male eq "43" && $genotype eq "14") {
				$genotype = "ac";
				print "$genotype\t";
			} elsif ($female eq "12" && $male eq "43" && $genotype eq "13") {
				$genotype = "ad";
				print "$genotype\t";
			} elsif ($female eq "12" && $male eq "43" && $genotype eq "24") {
				$genotype = "bc";
				print "$genotype\t";
			} elsif ($female eq "12" && $male eq "43" && $genotype eq "23") {
				$genotype = "bd";
				print "$genotype\t";
			} elsif ($female eq "13" && $male eq "25" && $genotype eq "12") {
				$genotype = "ac";
				print "$genotype\t";
			} elsif ($female eq "13" && $male eq "25" && $genotype eq "15") {
				$genotype = "ad";
				print "$genotype\t";
			} elsif ($female eq "13" && $male eq "25" && $genotype eq "23") {
				$genotype = "bc";
				print "$genotype\t";
			} elsif ($female eq "13" && $male eq "25" && $genotype eq "35") {
				$genotype = "bd";
				print "$genotype\t";
			} elsif ($female eq "14" && $male eq "35" && $genotype eq "13") {
				$genotype = "ac";
				print "$genotype\t";
			} elsif ($female eq "14" && $male eq "35" && $genotype eq "15") {
				$genotype = "ad";
				print "$genotype\t";
			} elsif ($female eq "14" && $male eq "35" && $genotype eq "34") {
				$genotype = "bc";
				print "$genotype\t";
			} elsif ($female eq "14" && $male eq "35" && $genotype eq "45") {
				$genotype = "bd";
				print "$genotype\t";
			} elsif ($female eq "18" && $male eq "56" && $genotype eq "15") {
				$genotype = "ac";
				print "$genotype\t";
			} elsif ($female eq "18" && $male eq "56" && $genotype eq "16") {
				$genotype = "ad";
				print "$genotype\t";
			} elsif ($female eq "18" && $male eq "56" && $genotype eq "58") {
				$genotype = "bc";
				print "$genotype\t";
			} elsif ($female eq "18" && $male eq "56" && $genotype eq "68") {
				$genotype = "bd";
				print "$genotype\t";
			} elsif ($female eq "34" && $male eq "25" && $genotype eq "23") {
				$genotype = "ac";
				print "$genotype\t";
			} elsif ($female eq "34" && $male eq "25" && $genotype eq "35") {
				$genotype = "ad";
				print "$genotype\t";
			} elsif ($female eq "34" && $male eq "25" && $genotype eq "24") {
				$genotype = "bc";
				print "$genotype\t";
			} elsif ($female eq "34" && $male eq "25" && $genotype eq "45") {
				$genotype = "bd";
				print "$genotype\t";
			} elsif ($female eq "14" && $male eq "34" && $genotype eq "13") {
				$genotype = "fg";
				print "$genotype\t";
			} elsif ($female eq "14" && $male eq "34" && $genotype eq "14") {
				$genotype = "ef";
				print "$genotype\t";
			} elsif ($female eq "14" && $male eq "34" && $genotype eq "34") {
				$genotype = "eg";
				print "$genotype\t";
			} elsif ($female eq "14" && $male eq "34" && $genotype eq "44") {
				$genotype = "ee";
				print "$genotype\t";
			} elsif ($female eq "24" && $male eq "34" && $genotype eq "23") {
				$genotype = "fg";
				print "$genotype\t";
			} elsif ($female eq "24" && $male eq "34" && $genotype eq "24") {
				$genotype = "ef";
				print "$genotype\t";
			} elsif ($female eq "24" && $male eq "34" && $genotype eq "34") {
				$genotype = "eg";
				print "$genotype\t";
			} elsif ($female eq "24" && $male eq "34" && $genotype eq "44") {
				$genotype = "ee";
				print "$genotype\t";
			} elsif ($female eq "12" && $male eq "xx" && $genotype eq "1x") {
				$genotype = "lm";
			} elsif ($female eq "12" && $male eq "xx" && $genotype eq "2x") {
				$genotype = "ll";
			} elsif ($female eq "13" && $male eq "11" && $genotype eq "13") {
				$genotype = "lm";
				print "$genotype\t";
			} elsif ($female eq "13" && $male eq "11" && $genotype eq "11") {
				$genotype = "ll";
				print "$genotype\t";
			} elsif ($female eq "13" && $male eq "22" && $genotype eq "23") {
				$genotype = "ll";
				print "$genotype\t";
			} elsif ($female eq "13" && $male eq "22" && $genotype eq "12") {
				$genotype = "lm";
				print "$genotype\t";
			} elsif ($female eq "13" && $male eq "88" && $genotype eq "18") {
				$genotype = "lm";
				print "$genotype\t";
			} elsif ($female eq "13" && $male eq "88" && $genotype eq "38") {
				$genotype = "ll";
				print "$genotype\t";
			} elsif ($female eq "15" && $male eq "44" && $genotype eq "14") {
				$genotype = "lm";
				print "$genotype\t";
			} elsif ($female eq "15" && $male eq "44" && $genotype eq "45") {
				$genotype = "ll";
				print "$genotype\t";
			} elsif ($female eq "16" && $male eq "11" && $genotype eq "11") {
				$genotype = "lm";
				print "$genotype\t";
			} elsif ($female eq "16" && $male eq "11" && $genotype eq "16") {
				$genotype = "ll";
				print "$genotype\t";
			} elsif ($female eq "23" && $male eq "33" && $genotype eq "33") {
				$genotype = "ll";
				print "$genotype\t";
			} elsif ($female eq "23" && $male eq "33" && $genotype eq "23") {
				$genotype = "lm";
				print "$genotype\t";
			} elsif ($female eq "2x" && $male eq "11" && $genotype eq "12") {
				$genotype = "lm";
				print "$genotype\t";
			} elsif ($female eq "2x" && $male eq "11" && $genotype eq "1x") {
				$genotype = "ll";
				print "$genotype\t";
			} elsif ($female eq "2x" && $male eq "xx" && $genotype eq "2x") {
				$genotype = "lm";
				print "$genotype\t";
			} elsif ($female eq "2x" && $male eq "xx" && $genotype eq "xx") {
				$genotype = "ll";
				print "$genotype\t";
			} elsif ($female eq "34" && $male eq "44" && $genotype eq "34") {
				$genotype = "lm";
				print "$genotype\t";
			} elsif ($female eq "34" && $male eq "44" && $genotype eq "44") {
				$genotype = "ll";
				print "$genotype\t";
			} elsif ($female eq "22" && $male eq "13" && $genotype eq "12") {
				$genotype = "np";
				print "$genotype\t";
			} elsif ($female eq "22" && $male eq "13" && $genotype eq "23") {
				$genotype = "nn";
				print "$genotype\t";
			} elsif ($female eq "33" && $male eq "12" && $genotype eq "13") {
				$genotype = "np";
				print "$genotype\t";
			} elsif ($female eq "33" && $male eq "12" && $genotype eq "23") {
				$genotype = "nn";
				print "$genotype\t";
			} elsif ($female eq "33" && $male eq "13" && $genotype eq "13") {
				$genotype = "np";
				print "$genotype\t";
			} elsif ($female eq "33" && $male eq "13" && $genotype eq "33") {
				$genotype = "nn";
				print "$genotype\t";
			} elsif ($female eq "xx" && $male eq "2x" && $genotype eq "2x") {
				$genotype = "np";
				print "$genotype\t";
			} elsif ($female eq "xx" && $male eq "2x" && $genotype eq "xx") {
				$genotype = "nn";
				print "$genotype\t";
			} elsif ($genotype eq "-") {
				$genotype = "-";
				print "$genotype\t";
			} else {
				my $column = $j +1;
				print STDERR "\nerror line $i column $column: snpname $snpName segregation not match for female: $female and male: $male and geno: $genotype\n";

				#print STDERR Dumper(\@split);
			}
		}
	print "\n";
	}
	$i++;

}
