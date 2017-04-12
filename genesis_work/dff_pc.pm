package dff_pc;
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
	$self->SUPER::to_verilog('/afs/asu.edu/users/v/s/r/vsriva10/EEE591/HW2/starter-02/primitives/dff_pc.vp');
# START USER CODE FROM /afs/asu.edu/users/v/s/r/vsriva10/EEE591/HW2/starter-02/primitives/dff_pc.vp PARSED INTO PACKAGE >>>
# line 1 "/afs/asu.edu/users/v/s/r/vsriva10/EEE591/HW2/starter-02/primitives/dff_pc.vp"
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '/*******************************************************************************';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } ' * PARAMETERIZATION';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } ' * ****************************************************************************/';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 

 use POSIX () ;
 
 use strict ;
 use warnings FATAL=>qw(all);
 use diagnostics ;
 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
 # module parameters
 my @DEF       = (1,1,1);
 my $Width     = parameter( Name=>'Width', Val=>[@DEF] , Doc=>"Signal bit widths");
 ref( $Width ) eq 'ARRAY' or $self->error( "Width param must be array" );
 my @W ;
 foreach my $f (@{$Width}){ $W[$#W+1] = $f ;} 
 my $Dim       = parameter( Name=>'Dim'  , Val=>scalar(@W) , Min=>1 , Step=>1 , Doc=>"Dimensionality of Signal" );
 scalar( @W ) == $Dim or $self->error( "ERROR dff.vp : Dimension of width array " . scalar( @W ) . " does not match parameter dimension $Dim\n" ); 

 my $PipelineDepth = parameter( Name=>'PipelineDepth', Val=>1    , Min=>0, Step=>1, Doc=>"Pipeline depth");

 my $Retime        = parameter( Name=>'Retime'       , Val=>0  , List=>[0, 1] , Doc=>"Pipeline Is Retimeable" ) ;
 my $Flatten       = parameter( Name=>'Flatten'      , Val=>1  , LIST=>[0, 1] , Doc=>"Flatten and Ungroup" );

 my $ResetToZero   = parameter( Name=>'ResetToZero'  , Val=>1  , List=>[0, 1] , Doc=>"Flop Resets to Zero" ) ;
 my $ResetToOne    = parameter( Name=>'ResetToOne'   , Val=>0  , List=>[0, 1] , Doc=>"Flop Resets to One" ) ;
 ( $ResetToZero and $ResetToOne ) and $self->error("Silly Rabbit: Can't ResetToZero and ResetToOne \n" );
 my $ResetToRst    = ! ( $ResetToZero or $ResetToOne ) ;

 my $Enable        = parameter( Name=>'Enable' , Val=>0 , List=>[0,1] , Doc=>"Use Enable Signal" ) ; 
 my $Valid         = parameter( Name=>'Valid'  , Val=>0 , List=>[0,1] , Doc=>"Use Valid Signal" ) ;
 my $FlopValid     = parameter( Name=>'FlopValid' , Val=>0 , List=>[0,1] , Doc=>"Flop the valid signal inside this module" );

 if( $FlopValid == 1 and $Valid == 0 ){ $self->error("ERROR dff.vp : Cannot flop valid, without using it...");  };
 #Helper Strings for Pixel Slices...
 my $PS = "[" .  ($W[$#W]-1)  . ":0]" ;
 my $US = "";
 for( my $i = 0 ; $i < $#W ; $i++ ){ $US .= "[" . ($W[$i]-1) . ":0]"; } ; 


print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } 'module '; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } mname; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } ' (';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '       	        input logic  '; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } $PS; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } ' din'; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } $US; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } ', ';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '                input logic  clk, ';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '	        input logic  rst,';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
                 if ( $Enable ) {
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '		input logic  en, ';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
                 }
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
                 if ( $Valid ) {
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '                input logic  d_valid ,';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
		    if ( $FlopValid ){
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '		output logic q_valid ,';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
                    }
		 }
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '	    ';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
                 if ( $ResetToRst ) {
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '		input logic  '; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } $PS; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } ' rst_val'; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } $US; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } ',';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
                 }
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '                output logic '; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } $PS; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } ' q'; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } $US; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '              );';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
   
 ###########################################
 # SYNOPSYS Synthesis Script  
 ###########################################

 #FIXME --> Should refactor these into a utility perl module
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '  /* synopsys dc_tcl_script_begin';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
 if( $Flatten eq 'YES' ){   
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '   set_ungroup [current_design] true';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '   set_flatten true -effort high -phase true -design [current_design]';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
 }   
 #   https://solvnet.synopsys.com/dow_retrieve/G-2012.03/manpages/syn2/set_dont_retime.html
 if( $Retime == 1 ){
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '   set_dont_retime [current_design] false ';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '   set_optimize_registers true -design [current_design]';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '  */';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
 } elsif ( $Retime == 0 ){
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '   set_dont_retime [current_design] true';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '   set_optimize_registers false -design [current_design]';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '  */  ';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
 }

print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '   ';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 

 #If Pipe Depth is 0 then the signal should just be pass through   
 if ($PipelineDepth==0) {

print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '       assign q = din ;';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 

 if( $Valid == 1 and $FlopValid == 1 ) {

print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '       assign q_valid = d_valid ;';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '   ';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
   
 }
   
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '   ';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 

 #If Pipe Depth is greater than 1, instantiate 'N' 1 pipe-stage designs
 } elsif ( $PipelineDepth > 1  )  { 

      for( my $i = 0 ; $i < $PipelineDepth ; $i++ ){

              my $pipe   = generate(  'dff', 
                                      ( 'pipeIn__' . $i ), 
                                        Width=>[@W] ,
                                        Dim=>$Dim,
                                        PipelineDepth=>1 ,
                                        Retime=>$Retime,
                                        ResetToZero=>$ResetToZero,
                                        ResetToOne=>$ResetToOne,
                                        Enable=>$Enable
                                     );
              my $in = $i==0 ? "din" : ( "imd_" . ($i-1) ) ;
              my $in_valid = $i==0 ? "d_valid" : ( "imd_val_" . ( $i-1 ) ) ;
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '                 logic '; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } $PS; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '  imd_'; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } $i; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } ''; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } $US; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } ';';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
                  if ( $Valid ) {
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '                    logic        imd_val_'; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } $i; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } ';';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
		    		 }
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '   ';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '                 '; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } $pipe->instantiate(); print { $Genesis2::UniqueModule::myself->{OutfileHandle} } ' ( ';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '                                           .din('; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } $in; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } ') , ';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '					   .q(imd_'; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } $i; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } ') , ';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
					    if ( $Enable ) {
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '                                           .en(en)  , ';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
                                            }
                                            if ( $Valid ) {
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '                                           .d_valid( '; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } $in_valid; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } ' )  ,';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '					   .q_valid( imd_val_'; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } $i; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } ' ) ,';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
					    }
                                            if ( $ResetToRst ) {
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '					   .rst_val(rst_val),';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
                                            }
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '                                           .clk(clk) ,';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '                                           .rst(rst) ';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '                                        );';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } ' ';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
   
      }

print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '          assign q = imd_'; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } $PipelineDepth-1; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } ' ;  ';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } ' ';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
           if ( $Valid ) {
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '          assign q_valid = imd_val_'; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } $PipelineDepth-1; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } ' ;';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
           }
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '   ';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 

 # If pipe depth is 1 build the single flop   
 } elsif ($PipelineDepth == 1 )  {   

print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '   ';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 

       #If there is no enable, set it to always on
       unless ( $Enable ) {

print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '               wire		            en;';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '               assign en = 1\'b1 ;';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 

       }


      sub set{
         my $sig=shift ;
         my $val=shift ;
         my $dim=shift ; 
         my $cDim=shift ;
         my $slice=shift ;
         my $width=shift ;
         my @W = @$width ;
         

         my $cfgStr = "\n" ; 

         if( $cDim == $dim ){
            return " assign $sig$slice = $val  ;\n" ;
         }
         for( my $i = 0 ; $i < $W[$cDim] ; $i++ ){
            $cfgStr .= set( $sig , $val , $dim , $cDim+1 , ($slice . "[" . $i . "]") , $width );
         }      
         return $cfgStr ;
      }
      my @Ws = @W ;
      pop @Ws ;
     
       #Setup Reset Values if reset to zero or reset to one
       if (  $ResetToZero ) {

print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '               logic '; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } $PS; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } ' rst_val'; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } $US; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } ';       ';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '               '; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } set( "rst_val" , $W[$#W]."'b0" , $Dim-1 , 0 , "" , \@Ws ); print { $Genesis2::UniqueModule::myself->{OutfileHandle} } ' ';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '	              //assign rst_val = \'0 ;';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 

       }
       if ( $ResetToOne ) {

print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '               logic '; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } $PS; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } ' rst_val'; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } $US; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } ';';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '               '; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } set( "rst_val" , $W[$#W]."1'b1" , $Dim-1 , 0 , "" , \@Ws ); print { $Genesis2::UniqueModule::myself->{OutfileHandle} } ' ';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '               //assign rst_val = \'1 ;';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 

       }
       if ( $Valid ) {
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '             logic data_en ;';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
          if ( $FlopValid ){
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '             logic q_valid_val ;';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
          }
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '			    ';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '             assign data_en = en && d_valid ;';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
          if( $FlopValid ) {        
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '             assign q_valid = q_valid_val ;';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '               always @ (posedge clk or negedge rst ) begin  //Latches on RST or CLK';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '                  q_valid_val <= ~rst ? 1\'b0 : ( en ? d_valid : q_valid ) ;   //\'';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '               end';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
          }   
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
       } else {
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '             logic data_en ;';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '             assign data_en = en ;';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
       }
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '   ';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '          logic '; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } $PS; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } ' q_val'; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } $US; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } ';';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '          logic '; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } $PS; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } ' d'; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } $US; print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '; ';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '          assign    d = din ; // Delay data in to prevent inf. loops';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '          assign    q = q_val ; ';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '   ';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '          always @ (posedge clk or negedge rst ) begin  //Latches on RST or CLK';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '             q_val <= (!rst) ? rst_val : ( data_en ? d : q ) ;   ';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '          end';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
   
 } else {   
       $self->error("Unexpected Branch condition in pipeline elaboration PipelineDepth:$PipelineDepth\n" );
 }
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '   ';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } 'endmodule';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
print { $Genesis2::UniqueModule::myself->{OutfileHandle} } '';print { $Genesis2::UniqueModule::myself->{OutfileHandle} } "\n"; 
# <<< END USER CODE FROM /afs/asu.edu/users/v/s/r/vsriva10/EEE591/HW2/starter-02/primitives/dff_pc.vp PARSED INTO PACKAGE


      # START PRE-GENERATED TO_VERILOG SUFFIX CODE >>>
      print STDERR "$self->{BaseModuleName}->to_verilog: Done with user code\n" 
	  if $self->{Debug} & 8;

      #
      # clean up code comes here...
      #
      # <<< END PRE-GENERATED TO_VERILOG SUFFIX CODE
  }
