#
# Filename: proj3_3.pl
#
# Description: Project 3 part 3
# By: Ronald Coe, Jr.
# CMIS 375
#

########################
#
# Get the Check data and print the check
#
&getCheckData;


###############################################
#
# Description: This subroutine gathers check fields from the user and prints the check
#
#
##################
sub getCheckData {
	print "Enter the Check Number: ";
	chomp($check_number = <STDIN>);
	print "Enter the First Name: ";
	chomp($first_name = <STDIN>);
	print "Enter the Last Name: ";
	chomp($last_name = <STDIN>);
	print "Enter the address: ";
	chomp($address[0] = <STDIN>);
	print "Enter addition address information: ";
	chomp($address[1] = <STDIN>);
	print "Enter the phone number: ";
	chomp($phone_number = <STDIN>);
	print "Enter the check date: ";
	chomp($check_date = <STDIN>);
	print "Enter the name of the payee: ";
	chomp($payee = <STDIN>);
	print "Enter the check amount: ";
	chomp($check_amount = <STDIN>);
	print "What is this check for (memo)?: ";
	chomp($check_memo = <STDIN>);
	
	
	#######################################
	# Print the Check
	#
	#
	&printTheCheck($check_number, $first_name, $last_name, \@address, $phone_number, $check_date, $payee, $check_amount, $check_memo);
}

###############################################
#
# Description: This subroutine handles the task of printing the check
#
#
##################
sub printTheCheck {
	my($chkno, $first, $last, $addr, $phone, $date, $payee, $amount, $memo) = @_;

#	my($chkno, $first, $last, $addr, $phone, $date, $payee, $amount, $memo) = ($_[0], $_[1], $_[2], $_[3], $_[4], $_[5], $_[6], $_[7], $_[8]);
	
	
	
format THECHECK = 
+----------------------------------------------------------------+
|                                       Check No. @##########    |
$chkno
|  @<<<<<<<<<<<<<<<<    @<<<<<<<<<<<<<<<                         |
$first, $last
|  @<<<<<<<<<<<<<<<<<<<<<<<<<<<<<                                |
$$addr[0]
|  @<<<<<<<<<<<<<<<<<<<<<<<<<<<<<                                |
$$addr[1]
|  @<<<<<<<<<<<<<<<<<<<<<<<<<<<<<           @<<<<<<<<<<<<<<<<<<< |
$phone, $date
|                                                                |
|  Pay to the                                                    |
|  Order of:     @<<<<<<<<<<<<<<<<<<<<<<     $@#############.##  |
$payee, $amount
|                                                                |
|  For: @<<<<<<<<<<<<<<<<<<<<<<            Stamped Signature     |
$memo
+----------------------------------------------------------------+
.
	
	$my_filehandle = select STDOUT;
	$~ = "THECHECK";
	select ($my_filehandle);
	
	write(STDOUT);
}

