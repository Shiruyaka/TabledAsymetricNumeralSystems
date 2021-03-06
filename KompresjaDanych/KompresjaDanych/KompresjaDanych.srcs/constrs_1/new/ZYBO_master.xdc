set_property -dict { PACKAGE_PIN L16   IOSTANDARD LVCMOS33 } [get_ports { clk }];
create_clock -period 8.000 -name clk -waveform {0.000 4.000} [get_ports clk]
create_generated_clock -name {current_state[0]} -source [get_ports clk] -divide_by 2 [get_pins {current_state_reg[0]/Q}]
create_generated_clock -name {current_state[1]} -source [get_ports clk] -divide_by 2 [get_pins {current_state_reg[1]/Q}]
create_generated_clock -name {enc/buffor_fill_reg_n_1_[0]} -source [get_ports clk] -divide_by 2 [get_pins {enc/buffor_fill_reg[0]/Q}]
create_generated_clock -name {enc/buffor_fill_reg_n_1_[1]} -source [get_ports clk] -divide_by 2 [get_pins {enc/buffor_fill_reg[1]/Q}]
create_generated_clock -name {enc/buffor_fill_reg_n_1_[2]} -source [get_ports clk] -divide_by 2 [get_pins {enc/buffor_fill_reg[2]/Q}]
create_generated_clock -name {enc/buffor_fill_reg_n_1_[3]} -source [get_ports clk] -divide_by 2 [get_pins {enc/buffor_fill_reg[3]/Q}]
create_generated_clock -name {enc/buffor_fill_reg_n_1_[4]} -source [get_ports clk] -divide_by 2 [get_pins {enc/buffor_fill_reg[4]/Q}]
create_generated_clock -name {enc/buffor_fill_reg_n_1_[5]} -source [get_ports clk] -divide_by 2 [get_pins {enc/buffor_fill_reg[5]/Q}]
create_generated_clock -name {enc/buffor_fill_reg_n_1_[6]} -source [get_ports clk] -divide_by 2 [get_pins {enc/buffor_fill_reg[6]/Q}]
create_generated_clock -name {enc/buffor_fill_reg_n_1_[7]} -source [get_ports clk] -divide_by 2 [get_pins {enc/buffor_fill_reg[7]/Q}]
create_generated_clock -name {enc/buffor_fill_reg_n_1_[8]} -source [get_ports clk] -divide_by 2 [get_pins {enc/buffor_fill_reg[8]/Q}]
create_generated_clock -name {enc/buffor_fill_reg_n_1_[9]} -source [get_ports clk] -divide_by 2 [get_pins {enc/buffor_fill_reg[9]/Q}]
create_generated_clock -name {enc/buffor_fill_reg_n_1_[10]} -source [get_ports clk] -divide_by 2 [get_pins {enc/buffor_fill_reg[10]/Q}]
create_generated_clock -name {enc/buffor_fill_reg_n_1_[11]} -source [get_ports clk] -divide_by 2 [get_pins {enc/buffor_fill_reg[11]/Q}]
create_generated_clock -name {enc/buffor_fill_reg_n_1_[12]} -source [get_ports clk] -divide_by 2 [get_pins {enc/buffor_fill_reg[12]/Q}]
create_generated_clock -name {enc/buffor_fill_reg_n_1_[13]} -source [get_ports clk] -divide_by 2 [get_pins {enc/buffor_fill_reg[13]/Q}]
create_generated_clock -name {enc/buffor_fill_reg_n_1_[14]} -source [get_ports clk] -divide_by 2 [get_pins {enc/buffor_fill_reg[14]/Q}]
create_generated_clock -name {enc/buffor_fill_reg_n_1_[15]} -source [get_ports clk] -divide_by 2 [get_pins {enc/buffor_fill_reg[15]/Q}]
create_generated_clock -name {enc/buffor_fill_reg_n_1_[16]} -source [get_ports clk] -divide_by 2 [get_pins {enc/buffor_fill_reg[16]/Q}]
create_generated_clock -name {enc/buffor_fill_reg_n_1_[17]} -source [get_ports clk] -divide_by 2 [get_pins {enc/buffor_fill_reg[17]/Q}]
create_generated_clock -name {enc/buffor_fill_reg_n_1_[18]} -source [get_ports clk] -divide_by 2 [get_pins {enc/buffor_fill_reg[18]/Q}]
create_generated_clock -name {enc/buffor_fill_reg_n_1_[19]} -source [get_ports clk] -divide_by 2 [get_pins {enc/buffor_fill_reg[19]/Q}]
create_generated_clock -name {enc/buffor_fill_reg_n_1_[20]} -source [get_ports clk] -divide_by 2 [get_pins {enc/buffor_fill_reg[20]/Q}]
create_generated_clock -name {enc/buffor_fill_reg_n_1_[21]} -source [get_ports clk] -divide_by 2 [get_pins {enc/buffor_fill_reg[21]/Q}]
create_generated_clock -name {enc/buffor_fill_reg_n_1_[22]} -source [get_ports clk] -divide_by 2 [get_pins {enc/buffor_fill_reg[22]/Q}]
create_generated_clock -name {enc/buffor_fill_reg_n_1_[23]} -source [get_ports clk] -divide_by 2 [get_pins {enc/buffor_fill_reg[23]/Q}]
create_generated_clock -name {enc/buffor_fill_reg_n_1_[24]} -source [get_ports clk] -divide_by 2 [get_pins {enc/buffor_fill_reg[24]/Q}]
create_generated_clock -name {enc/buffor_fill_reg_n_1_[25]} -source [get_ports clk] -divide_by 2 [get_pins {enc/buffor_fill_reg[25]/Q}]
create_generated_clock -name {enc/buffor_fill_reg_n_1_[26]} -source [get_ports clk] -divide_by 2 [get_pins {enc/buffor_fill_reg[26]/Q}]
create_generated_clock -name {enc/buffor_fill_reg_n_1_[27]} -source [get_ports clk] -divide_by 2 [get_pins {enc/buffor_fill_reg[27]/Q}]
create_generated_clock -name {enc/buffor_fill_reg_n_1_[28]} -source [get_ports clk] -divide_by 2 [get_pins {enc/buffor_fill_reg[28]/Q}]
create_generated_clock -name {enc/buffor_fill_reg_n_1_[29]} -source [get_ports clk] -divide_by 2 [get_pins {enc/buffor_fill_reg[29]/Q}]
create_generated_clock -name {enc/buffor_fill_reg_n_1_[30]} -source [get_ports clk] -divide_by 2 [get_pins {enc/buffor_fill_reg[30]/Q}]
create_generated_clock -name {enc/buffor_fill_reg_n_1_[31]} -source [get_ports clk] -divide_by 2 [get_pins {enc/buffor_fill_reg[31]/Q}]
create_generated_clock -name {enc/current_state[0]} -source [get_ports clk] -divide_by 2 [get_pins {enc/FSM_sequential_current_state_reg[0]/Q}]
create_generated_clock -name {enc/current_state[1]} -source [get_ports clk] -divide_by 2 [get_pins {enc/FSM_sequential_current_state_reg[1]/Q}]
create_generated_clock -name {enc/current_state[2]} -source [get_ports clk] -divide_by 2 [get_pins {enc/FSM_sequential_current_state_reg[2]/Q}]
create_generated_clock -name {middle/FSM_onehot_current_state_reg_n_1_[0]} -source [get_ports clk] -divide_by 2 [get_pins {middle/FSM_onehot_current_state_reg[0]/Q}]
create_generated_clock -name {middle/FSM_onehot_current_state_reg_n_1_[1]} -source [get_ports clk] -divide_by 2 [get_pins {middle/FSM_onehot_current_state_reg[1]/Q}]
create_generated_clock -name {middle/FSM_onehot_current_state_reg_n_1_[2]} -source [get_ports clk] -divide_by 2 [get_pins {middle/FSM_onehot_current_state_reg[2]/Q}]
create_generated_clock -name {middle/FSM_onehot_current_state_reg_n_1_[3]} -source [get_ports clk] -divide_by 2 [get_pins {middle/FSM_onehot_current_state_reg[3]/Q}]
create_generated_clock -name {middle/FSM_onehot_current_state_reg_n_1_[4]} -source [get_ports clk] -divide_by 2 [get_pins {middle/FSM_onehot_current_state_reg[4]/Q}]
create_generated_clock -name {middle/amount[0]} -source [get_pins {middle/FSM_onehot_current_state_reg[1]/Q}] -divide_by 2 [get_pins {middle/amount_reg[0]/Q}]
create_generated_clock -name {middle/amount[1]} -source [get_pins {middle/FSM_onehot_current_state_reg[1]/Q}] -divide_by 2 [get_pins {middle/amount_reg[1]/Q}]
create_generated_clock -name {middle/amount[2]} -source [get_pins {middle/FSM_onehot_current_state_reg[1]/Q}] -divide_by 2 [get_pins {middle/amount_reg[2]/Q}]
create_generated_clock -name {middle/amount[3]} -source [get_pins {middle/FSM_onehot_current_state_reg[1]/Q}] -divide_by 2 [get_pins {middle/amount_reg[3]/Q}]
create_generated_clock -name {middle/amount[4]} -source [get_pins {middle/FSM_onehot_current_state_reg[1]/Q}] -divide_by 2 [get_pins {middle/amount_reg[4]/Q}]
create_generated_clock -name {middle/amount[5]} -source [get_pins {middle/FSM_onehot_current_state_reg[1]/Q}] -divide_by 2 [get_pins {middle/amount_reg[5]/Q}]
create_generated_clock -name {middle/amount[6]} -source [get_pins {middle/FSM_onehot_current_state_reg[1]/Q}] -divide_by 2 [get_pins {middle/amount_reg[6]/Q}]
create_generated_clock -name {middle/amount[7]} -source [get_pins {middle/FSM_onehot_current_state_reg[1]/Q}] -divide_by 2 [get_pins {middle/amount_reg[7]/Q}]
create_generated_clock -name {middle/amount[8]} -source [get_pins {middle/FSM_onehot_current_state_reg[1]/Q}] -divide_by 2 [get_pins {middle/amount_reg[8]/Q}]
create_generated_clock -name {middle/amount[9]} -source [get_pins {middle/FSM_onehot_current_state_reg[1]/Q}] -divide_by 2 [get_pins {middle/amount_reg[9]/Q}]
create_generated_clock -name {middle/amount[10]} -source [get_pins {middle/FSM_onehot_current_state_reg[1]/Q}] -divide_by 2 [get_pins {middle/amount_reg[10]/Q}]
create_generated_clock -name {middle/amount[11]} -source [get_pins {middle/FSM_onehot_current_state_reg[1]/Q}] -divide_by 2 [get_pins {middle/amount_reg[11]/Q}]
create_generated_clock -name {middle/amount[12]} -source [get_pins {middle/FSM_onehot_current_state_reg[1]/Q}] -divide_by 2 [get_pins {middle/amount_reg[12]/Q}]
create_generated_clock -name {middle/amount[13]} -source [get_pins {middle/FSM_onehot_current_state_reg[1]/Q}] -divide_by 2 [get_pins {middle/amount_reg[13]/Q}]
create_generated_clock -name {middle/amount[14]} -source [get_pins {middle/FSM_onehot_current_state_reg[1]/Q}] -divide_by 2 [get_pins {middle/amount_reg[14]/Q}]
create_generated_clock -name {middle/amount[15]} -source [get_pins {middle/FSM_onehot_current_state_reg[1]/Q}] -divide_by 2 [get_pins {middle/amount_reg[15]/Q}]
create_generated_clock -name {middle/amount[16]} -source [get_pins {middle/FSM_onehot_current_state_reg[1]/Q}] -divide_by 2 [get_pins {middle/amount_reg[16]/Q}]
create_generated_clock -name {middle/amount[17]} -source [get_pins {middle/FSM_onehot_current_state_reg[1]/Q}] -divide_by 2 [get_pins {middle/amount_reg[17]/Q}]
create_generated_clock -name {middle/amount[18]} -source [get_pins {middle/FSM_onehot_current_state_reg[1]/Q}] -divide_by 2 [get_pins {middle/amount_reg[18]/Q}]
create_generated_clock -name {middle/amount[19]} -source [get_pins {middle/FSM_onehot_current_state_reg[1]/Q}] -divide_by 2 [get_pins {middle/amount_reg[19]/Q}]
create_generated_clock -name {middle/amount[20]} -source [get_pins {middle/FSM_onehot_current_state_reg[1]/Q}] -divide_by 2 [get_pins {middle/amount_reg[20]/Q}]
create_generated_clock -name {middle/amount[21]} -source [get_pins {middle/FSM_onehot_current_state_reg[1]/Q}] -divide_by 2 [get_pins {middle/amount_reg[21]/Q}]
create_generated_clock -name {middle/amount[22]} -source [get_pins {middle/FSM_onehot_current_state_reg[1]/Q}] -divide_by 2 [get_pins {middle/amount_reg[22]/Q}]
create_generated_clock -name {middle/amount[23]} -source [get_pins {middle/FSM_onehot_current_state_reg[1]/Q}] -divide_by 2 [get_pins {middle/amount_reg[23]/Q}]
create_generated_clock -name {middle/amount[24]} -source [get_pins {middle/FSM_onehot_current_state_reg[1]/Q}] -divide_by 2 [get_pins {middle/amount_reg[24]/Q}]
create_generated_clock -name {middle/amount[25]} -source [get_pins {middle/FSM_onehot_current_state_reg[1]/Q}] -divide_by 2 [get_pins {middle/amount_reg[25]/Q}]
create_generated_clock -name {middle/amount[26]} -source [get_pins {middle/FSM_onehot_current_state_reg[1]/Q}] -divide_by 2 [get_pins {middle/amount_reg[26]/Q}]
create_generated_clock -name {middle/amount[27]} -source [get_pins {middle/FSM_onehot_current_state_reg[1]/Q}] -divide_by 2 [get_pins {middle/amount_reg[27]/Q}]
create_generated_clock -name {middle/amount[28]} -source [get_pins {middle/FSM_onehot_current_state_reg[1]/Q}] -divide_by 2 [get_pins {middle/amount_reg[28]/Q}]
create_generated_clock -name {middle/amount[29]} -source [get_pins {middle/FSM_onehot_current_state_reg[1]/Q}] -divide_by 2 [get_pins {middle/amount_reg[29]/Q}]
create_generated_clock -name {middle/amount[30]} -source [get_pins {middle/FSM_onehot_current_state_reg[1]/Q}] -divide_by 2 [get_pins {middle/amount_reg[30]/Q}]
create_generated_clock -name {middle/amount[31]} -source [get_pins {middle/FSM_onehot_current_state_reg[1]/Q}] -divide_by 2 [get_pins {middle/amount_reg[31]/Q}]
create_generated_clock -name {middle/counter[0]} -source [get_pins {middle/counter_reg[0]/G}] -divide_by 2 -add -master_clock middle/FSM_onehot_current_state_reg_n_1_[2] [get_pins {middle/counter_reg[0]/Q}]
create_generated_clock -name {middle/counter[0]_1} -source [get_pins {middle/counter_reg[0]/G}] -divide_by 2 -add -master_clock middle/FSM_onehot_current_state_reg_n_1_[4] [get_pins {middle/counter_reg[0]/Q}]
create_generated_clock -name {middle/counter[10]} -source [get_pins {middle/counter_reg[10]/G}] -divide_by 2 -add -master_clock middle/FSM_onehot_current_state_reg_n_1_[2] [get_pins {middle/counter_reg[10]/Q}]
create_generated_clock -name {middle/counter[10]_1} -source [get_pins {middle/counter_reg[10]/G}] -divide_by 2 -add -master_clock middle/FSM_onehot_current_state_reg_n_1_[4] [get_pins {middle/counter_reg[10]/Q}]
create_generated_clock -name {middle/counter[11]} -source [get_pins {middle/counter_reg[11]/G}] -divide_by 2 -add -master_clock middle/FSM_onehot_current_state_reg_n_1_[2] [get_pins {middle/counter_reg[11]/Q}]
create_generated_clock -name {middle/counter[11]_1} -source [get_pins {middle/counter_reg[11]/G}] -divide_by 2 -add -master_clock middle/FSM_onehot_current_state_reg_n_1_[4] [get_pins {middle/counter_reg[11]/Q}]
create_generated_clock -name {middle/counter[12]} -source [get_pins {middle/counter_reg[12]/G}] -divide_by 2 -add -master_clock middle/FSM_onehot_current_state_reg_n_1_[2] [get_pins {middle/counter_reg[12]/Q}]
create_generated_clock -name {middle/counter[12]_1} -source [get_pins {middle/counter_reg[12]/G}] -divide_by 2 -add -master_clock middle/FSM_onehot_current_state_reg_n_1_[4] [get_pins {middle/counter_reg[12]/Q}]
create_generated_clock -name {middle/counter[13]} -source [get_pins {middle/counter_reg[13]/G}] -divide_by 2 -add -master_clock middle/FSM_onehot_current_state_reg_n_1_[2] [get_pins {middle/counter_reg[13]/Q}]
create_generated_clock -name {middle/counter[13]_1} -source [get_pins {middle/counter_reg[13]/G}] -divide_by 2 -add -master_clock middle/FSM_onehot_current_state_reg_n_1_[4] [get_pins {middle/counter_reg[13]/Q}]
create_generated_clock -name {middle/counter[14]} -source [get_pins {middle/counter_reg[14]/G}] -divide_by 2 -add -master_clock middle/FSM_onehot_current_state_reg_n_1_[2] [get_pins {middle/counter_reg[14]/Q}]
create_generated_clock -name {middle/counter[14]_1} -source [get_pins {middle/counter_reg[14]/G}] -divide_by 2 -add -master_clock middle/FSM_onehot_current_state_reg_n_1_[4] [get_pins {middle/counter_reg[14]/Q}]
create_generated_clock -name {middle/counter[15]} -source [get_pins {middle/counter_reg[15]/G}] -divide_by 2 -add -master_clock middle/FSM_onehot_current_state_reg_n_1_[2] [get_pins {middle/counter_reg[15]/Q}]
create_generated_clock -name {middle/counter[15]_1} -source [get_pins {middle/counter_reg[15]/G}] -divide_by 2 -add -master_clock middle/FSM_onehot_current_state_reg_n_1_[4] [get_pins {middle/counter_reg[15]/Q}]
create_generated_clock -name {middle/counter[16]} -source [get_pins {middle/counter_reg[16]/G}] -divide_by 2 -add -master_clock middle/FSM_onehot_current_state_reg_n_1_[2] [get_pins {middle/counter_reg[16]/Q}]
create_generated_clock -name {middle/counter[16]_1} -source [get_pins {middle/counter_reg[16]/G}] -divide_by 2 -add -master_clock middle/FSM_onehot_current_state_reg_n_1_[4] [get_pins {middle/counter_reg[16]/Q}]
create_generated_clock -name {middle/counter[17]} -source [get_pins {middle/counter_reg[17]/G}] -divide_by 2 -add -master_clock middle/FSM_onehot_current_state_reg_n_1_[2] [get_pins {middle/counter_reg[17]/Q}]
create_generated_clock -name {middle/counter[17]_1} -source [get_pins {middle/counter_reg[17]/G}] -divide_by 2 -add -master_clock middle/FSM_onehot_current_state_reg_n_1_[4] [get_pins {middle/counter_reg[17]/Q}]
create_generated_clock -name {middle/counter[18]} -source [get_pins {middle/counter_reg[18]/G}] -divide_by 2 -add -master_clock middle/FSM_onehot_current_state_reg_n_1_[2] [get_pins {middle/counter_reg[18]/Q}]
create_generated_clock -name {middle/counter[18]_1} -source [get_pins {middle/counter_reg[18]/G}] -divide_by 2 -add -master_clock middle/FSM_onehot_current_state_reg_n_1_[4] [get_pins {middle/counter_reg[18]/Q}]
create_generated_clock -name {middle/counter[1]} -source [get_pins {middle/counter_reg[1]/G}] -divide_by 2 -add -master_clock middle/FSM_onehot_current_state_reg_n_1_[2] [get_pins {middle/counter_reg[1]/Q}]
create_generated_clock -name {middle/counter[19]} -source [get_pins {middle/counter_reg[19]/G}] -divide_by 2 -add -master_clock middle/FSM_onehot_current_state_reg_n_1_[2] [get_pins {middle/counter_reg[19]/Q}]
create_generated_clock -name {middle/counter[19]_1} -source [get_pins {middle/counter_reg[19]/G}] -divide_by 2 -add -master_clock middle/FSM_onehot_current_state_reg_n_1_[4] [get_pins {middle/counter_reg[19]/Q}]
create_generated_clock -name {middle/counter[1]_1} -source [get_pins {middle/counter_reg[1]/G}] -divide_by 2 -add -master_clock middle/FSM_onehot_current_state_reg_n_1_[4] [get_pins {middle/counter_reg[1]/Q}]
create_generated_clock -name {middle/counter[20]} -source [get_pins {middle/counter_reg[20]/G}] -divide_by 2 -add -master_clock middle/FSM_onehot_current_state_reg_n_1_[2] [get_pins {middle/counter_reg[20]/Q}]
create_generated_clock -name {middle/counter[20]_1} -source [get_pins {middle/counter_reg[20]/G}] -divide_by 2 -add -master_clock middle/FSM_onehot_current_state_reg_n_1_[4] [get_pins {middle/counter_reg[20]/Q}]
create_generated_clock -name {middle/counter[21]} -source [get_pins {middle/counter_reg[21]/G}] -divide_by 2 -add -master_clock middle/FSM_onehot_current_state_reg_n_1_[2] [get_pins {middle/counter_reg[21]/Q}]
create_generated_clock -name {middle/counter[21]_1} -source [get_pins {middle/counter_reg[21]/G}] -divide_by 2 -add -master_clock middle/FSM_onehot_current_state_reg_n_1_[4] [get_pins {middle/counter_reg[21]/Q}]
create_generated_clock -name {middle/counter[22]} -source [get_pins {middle/counter_reg[22]/G}] -divide_by 2 -add -master_clock middle/FSM_onehot_current_state_reg_n_1_[2] [get_pins {middle/counter_reg[22]/Q}]
create_generated_clock -name {middle/counter[22]_1} -source [get_pins {middle/counter_reg[22]/G}] -divide_by 2 -add -master_clock middle/FSM_onehot_current_state_reg_n_1_[4] [get_pins {middle/counter_reg[22]/Q}]
create_generated_clock -name {middle/counter[23]} -source [get_pins {middle/counter_reg[23]/G}] -divide_by 2 -add -master_clock middle/FSM_onehot_current_state_reg_n_1_[2] [get_pins {middle/counter_reg[23]/Q}]
create_generated_clock -name {middle/counter[23]_1} -source [get_pins {middle/counter_reg[23]/G}] -divide_by 2 -add -master_clock middle/FSM_onehot_current_state_reg_n_1_[4] [get_pins {middle/counter_reg[23]/Q}]
create_generated_clock -name {middle/counter[24]} -source [get_pins {middle/counter_reg[24]/G}] -divide_by 2 -add -master_clock middle/FSM_onehot_current_state_reg_n_1_[2] [get_pins {middle/counter_reg[24]/Q}]
create_generated_clock -name {middle/counter[24]_1} -source [get_pins {middle/counter_reg[24]/G}] -divide_by 2 -add -master_clock middle/FSM_onehot_current_state_reg_n_1_[4] [get_pins {middle/counter_reg[24]/Q}]
create_generated_clock -name {middle/counter[25]} -source [get_pins {middle/counter_reg[25]/G}] -divide_by 2 -add -master_clock middle/FSM_onehot_current_state_reg_n_1_[2] [get_pins {middle/counter_reg[25]/Q}]
create_generated_clock -name {middle/counter[25]_1} -source [get_pins {middle/counter_reg[25]/G}] -divide_by 2 -add -master_clock middle/FSM_onehot_current_state_reg_n_1_[4] [get_pins {middle/counter_reg[25]/Q}]
create_generated_clock -name {middle/counter[26]} -source [get_pins {middle/counter_reg[26]/G}] -divide_by 2 -add -master_clock middle/FSM_onehot_current_state_reg_n_1_[2] [get_pins {middle/counter_reg[26]/Q}]
create_generated_clock -name {middle/counter[26]_1} -source [get_pins {middle/counter_reg[26]/G}] -divide_by 2 -add -master_clock middle/FSM_onehot_current_state_reg_n_1_[4] [get_pins {middle/counter_reg[26]/Q}]
create_generated_clock -name {middle/counter[27]} -source [get_pins {middle/counter_reg[27]/G}] -divide_by 2 -add -master_clock middle/FSM_onehot_current_state_reg_n_1_[2] [get_pins {middle/counter_reg[27]/Q}]
create_generated_clock -name {middle/counter[27]_1} -source [get_pins {middle/counter_reg[27]/G}] -divide_by 2 -add -master_clock middle/FSM_onehot_current_state_reg_n_1_[4] [get_pins {middle/counter_reg[27]/Q}]
create_generated_clock -name {middle/counter[28]_1} -source [get_pins {middle/counter_reg[28]/G}] -divide_by 2 -add -master_clock middle/FSM_onehot_current_state_reg_n_1_[4] [get_pins {middle/counter_reg[28]/Q}]
create_generated_clock -name {middle/counter[2]} -source [get_pins {middle/counter_reg[2]/G}] -divide_by 2 -add -master_clock middle/FSM_onehot_current_state_reg_n_1_[2] [get_pins {middle/counter_reg[2]/Q}]
create_generated_clock -name {middle/counter[2]_1} -source [get_pins {middle/counter_reg[2]/G}] -divide_by 2 -add -master_clock middle/FSM_onehot_current_state_reg_n_1_[4] [get_pins {middle/counter_reg[2]/Q}]
create_generated_clock -name {middle/counter[3]} -source [get_pins {middle/counter_reg[3]/G}] -divide_by 2 -add -master_clock middle/FSM_onehot_current_state_reg_n_1_[2] [get_pins {middle/counter_reg[3]/Q}]
create_generated_clock -name {middle/counter[4]} -source [get_pins {middle/counter_reg[4]/G}] -divide_by 2 -add -master_clock middle/FSM_onehot_current_state_reg_n_1_[2] [get_pins {middle/counter_reg[4]/Q}]
create_generated_clock -name {middle/counter[5]} -source [get_pins {middle/counter_reg[5]/G}] -divide_by 2 -add -master_clock middle/FSM_onehot_current_state_reg_n_1_[2] [get_pins {middle/counter_reg[5]/Q}]
create_generated_clock -name {middle/counter[6]} -source [get_pins {middle/counter_reg[6]/G}] -divide_by 2 -add -master_clock middle/FSM_onehot_current_state_reg_n_1_[2] [get_pins {middle/counter_reg[6]/Q}]
create_generated_clock -name {middle/counter[7]} -source [get_pins {middle/counter_reg[7]/G}] -divide_by 2 -add -master_clock middle/FSM_onehot_current_state_reg_n_1_[2] [get_pins {middle/counter_reg[7]/Q}]
create_generated_clock -name {middle/counter[8]} -source [get_pins {middle/counter_reg[8]/G}] -divide_by 2 -add -master_clock middle/FSM_onehot_current_state_reg_n_1_[2] [get_pins {middle/counter_reg[8]/Q}]
create_generated_clock -name {middle/counter[9]} -source [get_pins {middle/counter_reg[9]/G}] -divide_by 2 -add -master_clock middle/FSM_onehot_current_state_reg_n_1_[2] [get_pins {middle/counter_reg[9]/Q}]
create_generated_clock -name {middle/counter[28]} -source [get_pins {middle/counter_reg[28]/G}] -divide_by 2 -add -master_clock middle/FSM_onehot_current_state_reg_n_1_[2] [get_pins {middle/counter_reg[28]/Q}]
create_generated_clock -name {middle/counter[29]} -source [get_pins {middle/counter_reg[29]/G}] -divide_by 2 -add -master_clock middle/FSM_onehot_current_state_reg_n_1_[2] [get_pins {middle/counter_reg[29]/Q}]
create_generated_clock -name {middle/counter[29]_1} -source [get_pins {middle/counter_reg[29]/G}] -divide_by 2 -add -master_clock middle/FSM_onehot_current_state_reg_n_1_[4] [get_pins {middle/counter_reg[29]/Q}]
create_generated_clock -name {middle/counter[30]} -source [get_pins {middle/counter_reg[30]/G}] -divide_by 2 -add -master_clock middle/FSM_onehot_current_state_reg_n_1_[2] [get_pins {middle/counter_reg[30]/Q}]
create_generated_clock -name {middle/counter[30]_1} -source [get_pins {middle/counter_reg[30]/G}] -divide_by 2 -add -master_clock middle/FSM_onehot_current_state_reg_n_1_[4] [get_pins {middle/counter_reg[30]/Q}]
create_generated_clock -name {middle/counter[31]} -source [get_pins {middle/counter_reg[31]/G}] -divide_by 2 -add -master_clock middle/FSM_onehot_current_state_reg_n_1_[2] [get_pins {middle/counter_reg[31]/Q}]
create_generated_clock -name {middle/counter[31]_1} -source [get_pins {middle/counter_reg[31]/G}] -divide_by 2 -add -master_clock middle/FSM_onehot_current_state_reg_n_1_[4] [get_pins {middle/counter_reg[31]/Q}]
create_generated_clock -name {middle/counter[3]_1} -source [get_pins {middle/counter_reg[3]/G}] -divide_by 2 -add -master_clock middle/FSM_onehot_current_state_reg_n_1_[4] [get_pins {middle/counter_reg[3]/Q}]
create_generated_clock -name {middle/counter[4]_1} -source [get_pins {middle/counter_reg[4]/G}] -divide_by 2 -add -master_clock middle/FSM_onehot_current_state_reg_n_1_[4] [get_pins {middle/counter_reg[4]/Q}]
create_generated_clock -name {middle/counter[5]_1} -source [get_pins {middle/counter_reg[5]/G}] -divide_by 2 -add -master_clock middle/FSM_onehot_current_state_reg_n_1_[4] [get_pins {middle/counter_reg[5]/Q}]
create_generated_clock -name {middle/counter[6]_1} -source [get_pins {middle/counter_reg[6]/G}] -divide_by 2 -add -master_clock middle/FSM_onehot_current_state_reg_n_1_[4] [get_pins {middle/counter_reg[6]/Q}]
create_generated_clock -name {middle/counter[7]_1} -source [get_pins {middle/counter_reg[7]/G}] -divide_by 2 -add -master_clock middle/FSM_onehot_current_state_reg_n_1_[4] [get_pins {middle/counter_reg[7]/Q}]
create_generated_clock -name {middle/counter[8]_1} -source [get_pins {middle/counter_reg[8]/G}] -divide_by 2 -add -master_clock middle/FSM_onehot_current_state_reg_n_1_[4] [get_pins {middle/counter_reg[8]/Q}]
create_generated_clock -name {middle/counter[9]_1} -source [get_pins {middle/counter_reg[9]/G}] -divide_by 2 -add -master_clock middle/FSM_onehot_current_state_reg_n_1_[4] [get_pins {middle/counter_reg[9]/Q}]
create_generated_clock -name {middle/r_value_int[1]} -source [get_pins {middle/FSM_onehot_current_state_reg[2]/Q}] -divide_by 2 [get_pins {middle/r_value_int_reg[1]/Q}]
create_generated_clock -name {middle/r_value_int[2]} -source [get_pins {middle/FSM_onehot_current_state_reg[2]/Q}] -divide_by 2 [get_pins {middle/r_value_int_reg[2]/Q}]
create_generated_clock -name {middle/r_value_int[3]} -source [get_pins {middle/FSM_onehot_current_state_reg[2]/Q}] -divide_by 2 [get_pins {middle/r_value_int_reg[3]/Q}]
create_generated_clock -name {middle/r_value_int[4]} -source [get_pins {middle/FSM_onehot_current_state_reg[2]/Q}] -divide_by 2 [get_pins {middle/r_value_int_reg[4]/Q}]
create_generated_clock -name {middle/r_value_int[5]} -source [get_pins {middle/FSM_onehot_current_state_reg[2]/Q}] -divide_by 2 [get_pins {middle/r_value_int_reg[5]/Q}]
create_generated_clock -name {middle/r_value_int[6]} -source [get_pins {middle/FSM_onehot_current_state_reg[2]/Q}] -divide_by 2 [get_pins {middle/r_value_int_reg[6]/Q}]
create_generated_clock -name {middle/r_value_int[7]} -source [get_pins {middle/FSM_onehot_current_state_reg[2]/Q}] -divide_by 2 [get_pins {middle/r_value_int_reg[7]/Q}]
create_generated_clock -name {middle/r_value_int[8]} -source [get_pins {middle/FSM_onehot_current_state_reg[2]/Q}] -divide_by 2 [get_pins {middle/r_value_int_reg[8]/Q}]
