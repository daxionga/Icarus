set_property PACKAGE_PIN Y9 [get_ports {osc_clk}]
set_property IOSTANDARD LVCMOS33 [get_ports {osc_clk}]
#JA1
set_property PACKAGE_PIN Y11 [get_ports {RxD}]
set_property IOSTANDARD LVCMOS33 [get_ports {RxD}]
#JA2
set_property PACKAGE_PIN AA11 [get_ports {TxD}]
set_property IOSTANDARD LVCMOS33 [get_ports {TxD}]
#JA8
#set_property PACKAGE_PIN AB10 [get_ports {extminer_txd}]
#set_property IOSTANDARD LVCMOS33 [get_ports {extminer_txd}]
#JA7
#set_property PACKAGE_PIN AB11 [get_ports {extminer_rxd}]
#set_property IOSTANDARD LVCMOS33 [get_ports {extminer_rxd}]
set_property PACKAGE_PIN T22 [get_ports {led[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[0]}]
set_property PACKAGE_PIN T21 [get_ports {led[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[1]}]
set_property PACKAGE_PIN U22 [get_ports {led[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[2]}]
set_property PACKAGE_PIN U21 [get_ports {led[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[3]}]
set_property PACKAGE_PIN F22 [get_ports {dip}]
set_property IOSTANDARD LVCMOS18 [get_ports {dip}]
#set_property PACKAGE_PIN G22 [get_ports {dip[1]}]
#set_property IOSTANDARD LVCMOS18 [get_ports {dip[1]}]
#set_property PACKAGE_PIN H22 [get_ports {dip[2]}]
#set_property IOSTANDARD LVCMOS18 [get_ports {dip[2]}]
#set_property PACKAGE_PIN F21 [get_ports {dip[3]}]
#set_property IOSTANDARD LVCMOS18 [get_ports {dip[3]}]

#create_clock -name hash_clk -period 4.89 -waveform {0 2.445} [get_nets hash_clk]
#create_clock -name dv_clk -period 20 -waveform {0 10} [get_nets dv_clk]
#set_clock_groups -asyn -group dv_clk -group hash_clk

#create_clock -name osc_clk -period 10 [get_ports osc_clk]
#create_generated_clock -name dv_clk -source [get_ports osc_clk] -divide_by 2 [get_nets dv_clk]
#create_generated_clock -name hash_clk -source [get_ports osc_clk] -multiply_by 3 -divide_by 4 [get_nets hash_clk]
##NET "hash_clk" TNM_NET =  FFS "GRP_A";
##NET "dv_clk" TNM_NET =  FFS "GRP_B";

##create_clock -name GRP_A [get_clocks hash_clk]
##create_clock -name GRP_B [get_clocks dv_clk]
##set_max_delay -from [get_clocks GRP_A] -to [get_clocks GRP_B] -name TS_Example1
##set_max_delay -from [get_clocks GRP_A] -to [get_clocks GRP_B] -name TS_Example2
##set_false_path -through [get_nets TS_Example1]
##set_false_path -through [get_nets TS_Example2]

##TIMESPEC TS_Example1 = FROM "GRP_A" TO "GRP_B" TIG ;
#set_max_delay -from [get_nets dv_clk] -to [get_nets hash_clk] -datapath_only
##
##TIMESPEC TS_Example2 = FROM "GRP_B" TO "GRP_A" TIG ;
#set_max_delay -from [get_nets hash_clk] -to [get_nets dv_clk] -datapath_only
##NET "dip[*]" TIG;
set_false_path -through [get_nets dip]
##NET "M/midstate_d1[*]" TIG;
set_false_path -through [get_nets M/midstate_d1[*]]
##NET "M/data2_d1[*]" TIG;
set_false_path -through [get_nets M/data2_d1[*]]
##NET "M/got_ticket_d1" TIG;
set_false_path -through [get_nets M/got_ticket_d1]