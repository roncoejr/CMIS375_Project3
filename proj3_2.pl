#
# Filename: proj3_2.pl
#
# Description: Project 3 part 2
# By: Ronald Coe, Jr.
# CMIS 375
#

###############################################
#
# Initialize variables
#
#
##################
$sum = 0;
$product = 1;

#########################
#
# Get the requested operator and shift the array so that only numbers remain
#
$operator = shift(@ARGV);

##########
#
# Determine the operator and call the appropriate function
#
#
if ($operator =~ /add/i) {
		add(\$sum, \@ARGV);
		print "\nThe SUM is: $sum\n\n";
} elsif ($operator =~ /multiply/i) {
		multiply(\$product, \@ARGV);
		print "\nThe PRODUCT is: $product\n\n";
}


###############################################
#
# Description: Function to perform addition
#
#
##################
sub add {
	# my($run_total) = $_[0];
	# my($next_num) = $_[1];
	
	my($run_total, $next_num) = @_;
	
	foreach $number (@$next_num) {
		$$run_total += $number;
	}
}

###############################################
#
# Description: Function to perform multiplication
#
#
##################
sub multiply($run_product, $next_num) {
	# my($run_product) = $_[0];
	# my($next_num) = $_[1];
	
	my($run_product, $next_num) = @_;
	
	foreach $number (@$next_num) {
		$$run_product *= $number;
	}
}