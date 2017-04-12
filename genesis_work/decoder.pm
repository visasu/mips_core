package decoder;
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
	$self->SUPER::to_verilog('/afs/asu.edu/users/v/s/r/vsriva10/EEE591/HW2/starter-02/primitives/decoder.vp');
# START USER CODE FROM /afs/asu.edu/users/v/s/r/vsriva10/EEE591/HW2/starter-02/primitives/decoder.vp PARSED INTO PACKAGE >>>
# line 1 "/afs/asu.edu/users/v/s/r/vsriva10/EEE591/HW2/starter-02/primitives/decoder.vp"
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '//decoder.vp';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
 my $aW = 15;
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } 'module  '; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } mname; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } ' (';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '	input  logic [5:0] funct,	';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '	input  logic [5:0] opcode,	';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '	output logic ['; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } $aW-1; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } ':0] aluCtrl	';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } ');';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '	parameter ADD  = 6\'b100000, AND = 6\'b100100, JR  = 6\'b001000, NOR = 6\'b100111, OR  = 6\'b100101, SLT = 6\'b101010, SRA = 6\'b000011, SUB = 6\'b100010, XOR = 6\'b100110, SLL = 6\'b000000, SRL = 6\'b000010, ADDU = 6\'b100001;';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '	parameter ADDI = 6\'b001000, ANDI = 6\'b001100, J = 6\'b000010, LW = 6\'b100011, ORI = 6\'b001101, SLTI = 6\'b001010, SW = 6\'b101011, XORI = 6\'b001110, LUI = 6\'b001111, ADDIU = 6\'b001001;';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '	always_comb begin';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '		case(opcode)';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '			ADDI  : aluCtrl = '; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } $aW; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '\'d2;                       ';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '			LW    : aluCtrl = '; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } $aW; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '\'d4;                       ';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '			SW    : aluCtrl = '; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } $aW; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '\'d8;                       ';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '			ANDI  : aluCtrl = '; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } $aW; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '\'d32;                       ';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '			ORI   : aluCtrl = '; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } $aW; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '\'d256;                     ';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '			SLTI  : aluCtrl = '; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } $aW; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '\'d1024;                     ';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '			XORI  : aluCtrl = '; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } $aW; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '\'d16384;                    ';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '			6\'b000000: case(funct)';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '					ADD   : aluCtrl = '; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } $aW; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '\'d1;                       ';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '					AND   : aluCtrl = '; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } $aW; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '\'d16;                       ';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '		 			NOR   : aluCtrl = '; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } $aW; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '\'d64;                       ';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '					OR    : aluCtrl = '; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } $aW; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '\'d128;                     ';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '					SLT   : aluCtrl = '; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } $aW; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '\'d512;                      ';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '					SRA   : aluCtrl = '; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } $aW; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '\'d2048;                     ';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '					SUB   : aluCtrl = '; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } $aW; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '\'d4096;                     ';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '					XOR   : aluCtrl = '; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } $aW; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '\'d8192;                     ';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '					default : aluCtrl = '; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } $aW; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '\'b0;  // TODO : check whether default is required or not';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '				   endcase                 ';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '				   default : aluCtrl = '; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } $aW; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '\'b0; 	// TODO : check whether default is required or not';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '		endcase';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '	end';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } 'endmodule // '; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } mname; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
# <<< END USER CODE FROM /afs/asu.edu/users/v/s/r/vsriva10/EEE591/HW2/starter-02/primitives/decoder.vp PARSED INTO PACKAGE


      # START PRE-GENERATED TO_VERILOG SUFFIX CODE >>>
      print STDERR "$self->{BaseModuleName}->to_verilog: Done with user code\n" 
	  if $self->{Debug} & 8;

      #
      # clean up code comes here...
      #
      # <<< END PRE-GENERATED TO_VERILOG SUFFIX CODE
  }
