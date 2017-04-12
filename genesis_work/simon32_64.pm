package simon32_64;
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
	$self->SUPER::to_verilog('/afs/asu.edu/users/v/s/r/vsriva10/EEE591/HW2/starter-02/primitives/simon32_64.vp');
# START USER CODE FROM /afs/asu.edu/users/v/s/r/vsriva10/EEE591/HW2/starter-02/primitives/simon32_64.vp PARSED INTO PACKAGE >>>
# line 1 "/afs/asu.edu/users/v/s/r/vsriva10/EEE591/HW2/starter-02/primitives/simon32_64.vp"
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '// simon32_64.vp';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
 my $dW = parameter( name=>"dataWidth", val=>16, doc=>"Width of input");
 my $kW = parameter( name=>"keyWidth", val=>16, doc=>"Width of keys");
 my $m = parameter( name=>"keyring", val=>4, doc=>"Keys in ring");
 my $t = parameter( name=>"cycles", val=>34, doc=>"No.of Cycles");
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '//Generate module';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } 'module '; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } mname; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } ' (';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } 'input clk, ';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } 'input reset,';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } 'input ['; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } 2*$dW-1; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } ':0] plaintext,';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } 'input ['; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } 4*$kW-1; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } ':0] key,';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } 'output ['; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } 2*$dW-1; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } ':0] ciphertext';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } ');';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '	reg ['; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } 2*$dW-1; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } ':0] ciphertext_reg;';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
	for(my $i=0;$i<4;$i++){
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '	reg ['; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } $kW-1; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } ':0] k'; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } $i; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } ' ['; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } $t-1; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } ':0];';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
	}
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '	reg [0:'; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } 2*$dW-2; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '] z; //Inverted due to indexing ';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '	reg ['; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } $dW-1; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } ':0] x ['; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } $t-1; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } ':0];';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '	reg ['; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } $dW-1; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } ':0] x1 ['; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } $t-1; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } ':0];';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '	wire ['; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } 2*$dW-1; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } ':0] ciphertext_w;';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '	wire ['; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } $kW-1; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } ':0] k_w ['; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } $t-1; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } ':0];';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '	wire ['; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } $kW-1; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } ':0] k_out ['; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } $t-1; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } ':0];';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '	wire ['; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } 2*$dW-2; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } ':0] z_in;';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '	wire ['; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } $dW-1; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } ':0] x_w ['; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } $t-1; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } ':0];';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '///////////////Floping I/Os///////////////////////';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '/*	always @(negedge reset or posedge clk)';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '	begin';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '		if(!reset)';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '		begin';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
 for(my $i=0;$i<$t;$i++){
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '			k0['; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } $i; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } ']<=k_w['; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } $i; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '];';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
	}
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
	for(my $j=1;$j<4;$j++){
 	for(my $i=0;$i<$t;$i++){
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '			k'; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } $j; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '['; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } $i; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } ']<=k'; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } $j-1; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '['; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } $i; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '];';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
		}
	}
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '		end';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '		else';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '		begin';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '			z<=z_in;';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
 for(my $i=0;$i<$t;$i++){
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '			k0['; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } $i; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } ']<=k_w['; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } $i; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '];';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
	}
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
	for(my $j=1;$j<4;$j++){
 	for(my $i=0;$i<$t;$i++){
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '			k'; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } $j; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '['; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } $i; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } ']<=k'; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } $j-1; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '['; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } $i; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '];';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
		}
	}
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '		end';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '	end';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '*/';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '	always @(posedge clk)';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '	begin';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '			z<=z_in;';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
 for(my $i=0;$i<$t;$i++){
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '			k0['; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } $i; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } ']<=k_w['; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } $i; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '];';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
	}
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
	for(my $j=1;$j<4;$j++){
 	for(my $i=0;$i<$t;$i++){
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '			k'; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } $j; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '['; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } $i; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } ']<=k'; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } $j-1; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '['; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } $i; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '];';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
		}
	}
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '		x[0]<=x_w[0];';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '		x[1]<=x_w[1];';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
 for(my $i=2;$i<$t;$i++){
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '		x['; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } $i; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } ']<=x_w['; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } $i; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '];';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
	}
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
 for(my $i=0;$i<$t;$i++){
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '		x1['; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } $i; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } ']<=x['; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } $i; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '];';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
	}
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '		$display("Input:%d\\n",plaintext);';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '		ciphertext_reg<=ciphertext_w;';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '	end';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '////////////////Reset logic before I/Os/////////////////';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '	assign ciphertext_w = reset ? '; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } 2*$dW; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '\'d0 : {x['; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } $t-1; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '],x1['; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } $t-2; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } ']};';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '///////////////// c ^ (z0)j/////////////////////////////////////////';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '//Pending Confirmation';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '	assign z_in = reset ? 31\'b0 : 31\'b1111101000100101011000011100110;';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '/////////////key generator////////////////////////////';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '//Some pending changes';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
 for(my $i=0;$i<$m;$i++){
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '	assign k_w['; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } $i; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '] = reset ? '; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } $kW; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '\'d0 : key['; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } 15+16*$i; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } ':'; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } 16*$i; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '];';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
	}
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '//For generating K4';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '	assign k_w[4] = reset ? '; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } $kW; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '\'d0 : (k0[0] ^ ({k0[3][2:0],k0[3]['; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } $kW-1; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } ':3]} ^ k0[1]) ^ ({k0[3][3:0],k0[3]['; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } $kW-1; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } ':4]} ^ {k0[1][0],k0[1]['; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } $kW-1; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } ':1]}) ^ (16\'d65532 ^ z[0])) ;';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '//For generating K5';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '	assign k_w[5] = reset ? '; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } $kW; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '\'d0 : (k1[1] ^ ({k0[4][2:0],k0[4]['; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } $kW-1; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } ':3]} ^ k1[2]) ^ ({k0[4][3:0],k0[4]['; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } $kW-1; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } ':4]} ^ {k1[2][0],k1[2]['; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } $kW-1; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } ':1]}) ^ (16\'d65532 ^ z[1])) ;';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '//For generating K6';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '	assign k_w[6] = reset ? '; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } $kW; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '\'d0 : (k2[2] ^ ({k0[5][2:0],k0[5]['; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } $kW-1; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } ':3]} ^ k2[3]) ^ ({k0[5][3:0],k0[5]['; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } $kW-1; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } ':4]} ^ {k2[3][0],k2[3]['; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } $kW-1; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } ':1]}) ^ (16\'d65532 ^ z[2])) ;';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '	';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
 for(my $i=$m+3;$i<$t;$i++){
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '	assign k_w['; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } $i; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '] = reset ? '; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } $kW; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '\'d0 : (k3['; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } $i-4; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '] ^ ({k0['; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } $i-1; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '][2:0],k0['; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } $i-1; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } ']['; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } $kW-1; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } ':3]} ^ k2['; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } $i-3; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } ']) ^ ({k0['; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } $i-1; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '][3:0],k0['; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } $i-1; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } ']['; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } $kW-1; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } ':4]} ^ {k2['; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } $i-3; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '][0],k2['; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } $i-3; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } ']['; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } $kW-1; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } ':1]}) ^ (16\'d65532 ^ z['; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } $i-4; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '])) ;';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
	}
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '	assign k_out[0] = reset ? '; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } $kW; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '\'d0 : k0[0] ;';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '	assign k_out[1] = reset ? '; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } $kW; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '\'d0 : k1[1] ;';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '	assign k_out[2] = reset ? '; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } $kW; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '\'d0 : k2[2] ;';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '	assign k_out[3] = reset ? '; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } $kW; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '\'d0 : k3[3] ;';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
 for(my $i=$m;$i<$t;$i++){
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '	assign k_out['; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } $i; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '] = reset ? '; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } $kW; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '\'d0 : k3['; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } $i; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '] ;';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
	}
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } ' ';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '///////////////Round Function//////////////////////////';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '//Pending Confirmation';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '	assign x_w[0] = reset ? '; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } $dW; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '\'d0 : plaintext['; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } $dW-1; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } ':0] ;';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '	assign x_w[1] = reset ? '; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } $dW; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '\'d0 : plaintext['; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } 2*$dW-1; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } ':'; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } $dW; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '] ;';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '	assign x_w[2] = reset ? '; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } $dW; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '\'d0 : (x[0] ^ ({x[1]['; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } $dW-2; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } ':0],x[1]['; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } $dW-1; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } ']} & {x[1]['; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } $dW-9; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } ':0],x[1]['; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } $dW-1; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } ':'; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } $dW-8; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } ']}) ^ {x[1]['; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } $dW-3; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } ':0],x[1]['; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } $dW-1; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } ':'; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } $dW-2; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } ']} ^ k_out[0]) ;';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '	assign ciphertext= ciphertext_reg;';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
 for(my $i=1;$i<$t-2;$i++){
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '	assign x_w['; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } $i+2; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '] = reset ? '; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } $dW; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '\'d0 : (x1['; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } $i; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '] ^ ({x['; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } $i+1; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } ']['; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } $dW-2; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } ':0],x['; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } $i+1; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } ']['; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } $dW-1; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } ']} & {x['; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } $i+1; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } ']['; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } $dW-9; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } ':0],x['; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } $i+1; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } ']['; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } $dW-1; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } ':'; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } $dW-8; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } ']}) ^ {x['; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } $i+1; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } ']['; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } $dW-3; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } ':0],x['; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } $i+1; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } ']['; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } $dW-1; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } ':'; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } $dW-2; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } ']} ^ k_out['; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } $i; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } ']) ;';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '//	$display("\\nx_w['; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } $i+2; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } ']=%d, x1['; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } $i; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } ']=%d, x['; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } $i+1; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } ']=%d, k_out['; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } $i; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } ']=%d", x_w['; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } $i+2; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '], x['; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } $i; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '], x['; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } $i+1; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '], k_out['; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } $i; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '])';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
	}
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } 'endmodule: '; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } mname; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
# <<< END USER CODE FROM /afs/asu.edu/users/v/s/r/vsriva10/EEE591/HW2/starter-02/primitives/simon32_64.vp PARSED INTO PACKAGE


      # START PRE-GENERATED TO_VERILOG SUFFIX CODE >>>
      print STDERR "$self->{BaseModuleName}->to_verilog: Done with user code\n" 
	  if $self->{Debug} & 8;

      #
      # clean up code comes here...
      #
      # <<< END PRE-GENERATED TO_VERILOG SUFFIX CODE
  }
