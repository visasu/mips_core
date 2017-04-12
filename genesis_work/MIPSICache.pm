package MIPSICache;
use strict;
use vars qw($VERSION @ISA @EXPORT @EXPORT_OK);

use Exporter;
use FileHandle;
use Env; # Make environment variables available


use Genesis2::Manager 1.00;
use Genesis2::UniqueModule 1.00;

@ISA = qw(Exporter Genesis2::UniqueModule);
@EXPORT = qw();
@EXPORT_OK = qw();
$VERSION = '1.0';
sub get_SrcSuffix {Genesis2::UniqueModule::private_to_me(); return ".vp";};
sub get_OutfileSuffix {Genesis2::UniqueModule::private_to_me(); return ".v"};
############################### Module Starts Here ###########################


  sub to_verilog{ 
      # START PRE-GENERATED TO_VERILOG PREFIX CODE >>>
      my $self = shift;
      
      print STDERR "$self->{BaseModuleName}->to_verilog: Start user code\n" 
	  if $self->{Debug} & 8;
      # <<< END PRE-GENERATED TO_VERILOG PREFIX CODE
	$self->SUPER::to_verilog('/afs/asu.edu/users/v/s/r/vsriva10/EEE591/HW2/starter-02/primitives/MIPSICache.vp');
# START USER CODE FROM /afs/asu.edu/users/v/s/r/vsriva10/EEE591/HW2/starter-02/primitives/MIPSICache.vp PARSED INTO PACKAGE >>>
# line 1 "/afs/asu.edu/users/v/s/r/vsriva10/EEE591/HW2/starter-02/primitives/MIPSICache.vp"
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '//MIPSICache';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
my $wl    = parameter( Name=>'wordLength', Val=>"None" , Doc=>"Word length width" );
my $iW    = parameter( Name=>'issueWidth', Val=>"None" , Doc=>"Word length width" );
my $iCO   = parameter( Name=>'iCacheOccupancy', Val=>"None" , Doc=>"Word length width" );
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } 'module '; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } mname; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '(';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '//	input logic ['; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } $iW*$wl-1; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } ':0] iCacheWriteData,';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '//    	input logic ['; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } $wl-1; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } ':0] iCacheWriteAddr,';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '//	input logic wrEn,';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '	output logic ['; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } $iW*$wl-1; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } ':0] iCacheReadData,';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '    	input logic ['; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } $wl-1; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } ':0] iCacheReadAddr';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } ');';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '	logic ['; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } $wl-1; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } ':0] mem ['; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } $iCO; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '];';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '	';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '	assign iCacheReadData = mem[iCacheReadAddr];';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } 'endmodule: '; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } mname; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
# <<< END USER CODE FROM /afs/asu.edu/users/v/s/r/vsriva10/EEE591/HW2/starter-02/primitives/MIPSICache.vp PARSED INTO PACKAGE


      # START PRE-GENERATED TO_VERILOG SUFFIX CODE >>>
      print STDERR "$self->{BaseModuleName}->to_verilog: Done with user code\n" 
	  if $self->{Debug} & 8;

      #
      # clean up code comes here...
      #
      # <<< END PRE-GENERATED TO_VERILOG SUFFIX CODE
  }
