#
# Filename: proj3_1.pl
#
# Description: Project 3 part 1
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


##########
#
# Determine the operator and call the appropriate function
#
#
####################################
if ($ARGV[0] =~ /add/i) {
	foreach $number (1 .. $#ARGV) {
		$sum = add($sum, $ARGV[$number]);
	}
	print "\nThe SUM is: $sum\n\n";
} elsif ($ARGV[0] =~ /multiply/i) {
	foreach $number (1 .. $#ARGV) {
		$product = multiply($product, $ARGV[$number]);
	}
	print "\nThe PRODUCT is: $product\n\n";
}

###############################################
#
# Description: Function to perform addition
#
#
##################
sub add {
	# Extract arguments passed to the function
	my($run_total, $next_num) = @_;
	
	# Establish a running total
	$run_total += $next_num;
	
	# Return the total to the caller
	return $run_total;
}

###############################################
#
# Description: Function to perform multiplication
#
#
##################
sub multiply {
	# Extract arguments passed to the function
	my($run_product, $next_num) = @_;
	
	# Establish a running product
	$run_product *= $next_num;
	
	# Return the product to the caller
	return $run_product;
}