`ifndef SYNTHESIS

//
// This is an automatically generated file from 
// dc_shell Version K-2015.06-SP1 -- Jul 21, 2015
//

// For simulation only. Do not modify.

module mipsCore_svsim (
		input logic [31:0] iCacheReadData,
	output logic [31:0] iCacheReadAddr,

		input logic [31:0] dCacheReadData,
	output logic [31:0] dCacheWriteData,
	output logic [31:0] dCacheAddr,
	output logic dCacheWriteEn,
	output logic dCacheReadEn,

			input logic [31:0] rfReadData_p0,
		output logic [4:0] rfReadAddr_p0,
		output logic rfReadEn_p0,
		input logic [31:0] rfReadData_p1,
		output logic [4:0] rfReadAddr_p1,
		output logic rfReadEn_p1,
		output logic [31:0] rfWriteData_p0,
		output logic [4:0] rfWriteAddr_p0,
		output logic rfWriteEn_p0,

	
		input logic clk,
	input logic rst
);

	

  mipsCore mipsCore( {>>{ iCacheReadData }}, {>>{ iCacheReadAddr }}, 
        {>>{ dCacheReadData }}, {>>{ dCacheWriteData }}, {>>{ dCacheAddr }}, 
        {>>{ dCacheWriteEn }}, {>>{ dCacheReadEn }}, {>>{ rfReadData_p0 }}, 
        {>>{ rfReadAddr_p0 }}, {>>{ rfReadEn_p0 }}, {>>{ rfReadData_p1 }}, 
        {>>{ rfReadAddr_p1 }}, {>>{ rfReadEn_p1 }}, {>>{ rfWriteData_p0 }}, 
        {>>{ rfWriteAddr_p0 }}, {>>{ rfWriteEn_p0 }}, {>>{ clk }}, {>>{ rst }}
 );
endmodule
`endif
