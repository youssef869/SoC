onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -expand -group {TB SIGNALS} /SoC_tb/CLK_tb
add wave -noupdate -expand -group {TB SIGNALS} /SoC_tb/RX_tb
add wave -noupdate -expand -group {TB SIGNALS} -color Magenta /SoC_tb/TX_tb
add wave -noupdate -expand -group {TB SIGNALS} /SoC_tb/RESETn_tb
add wave -noupdate -expand -group {SOC SIGNALS} /SoC_tb/DUT/CLK
add wave -noupdate -expand -group {SOC SIGNALS} /SoC_tb/DUT/PADDR
add wave -noupdate -expand -group {SOC SIGNALS} /SoC_tb/DUT/PENABLE
add wave -noupdate -expand -group {SOC SIGNALS} -radix binary /SoC_tb/DUT/PRDATA
add wave -noupdate -expand -group {SOC SIGNALS} /SoC_tb/DUT/PREADY
add wave -noupdate -expand -group {SOC SIGNALS} /SoC_tb/DUT/PSEL
add wave -noupdate -expand -group {SOC SIGNALS} /SoC_tb/DUT/PSEL0
add wave -noupdate -expand -group {SOC SIGNALS} /SoC_tb/DUT/PSLVERR
add wave -noupdate -expand -group {SOC SIGNALS} /SoC_tb/DUT/PSTRB
add wave -noupdate -expand -group {SOC SIGNALS} /SoC_tb/DUT/PWDATA
add wave -noupdate -expand -group {SOC SIGNALS} /SoC_tb/DUT/PWRITE
add wave -noupdate -expand -group {SOC SIGNALS} /SoC_tb/DUT/RESETn
add wave -noupdate -expand -group {SOC SIGNALS} /SoC_tb/DUT/RX
add wave -noupdate -expand -group {SOC SIGNALS} -color Magenta /SoC_tb/DUT/TX
add wave -noupdate -expand -group {MIPS WRAPPRER} /SoC_tb/DUT/MIPS_wrapper_u0/access_done
add wave -noupdate -expand -group {MIPS WRAPPRER} /SoC_tb/DUT/MIPS_wrapper_u0/cs
add wave -noupdate -expand -group {MIPS WRAPPRER} /SoC_tb/DUT/MIPS_wrapper_u0/PADDR
add wave -noupdate -expand -group {MIPS WRAPPRER} /SoC_tb/DUT/MIPS_wrapper_u0/PCLK
add wave -noupdate -expand -group {MIPS WRAPPRER} /SoC_tb/DUT/MIPS_wrapper_u0/PENABLE
add wave -noupdate -expand -group {MIPS WRAPPRER} /SoC_tb/DUT/MIPS_wrapper_u0/PRDATA
add wave -noupdate -expand -group {MIPS WRAPPRER} /SoC_tb/DUT/MIPS_wrapper_u0/PREADY
add wave -noupdate -expand -group {MIPS WRAPPRER} /SoC_tb/DUT/MIPS_wrapper_u0/PRESETn
add wave -noupdate -expand -group {MIPS WRAPPRER} /SoC_tb/DUT/MIPS_wrapper_u0/PSEL
add wave -noupdate -expand -group {MIPS WRAPPRER} /SoC_tb/DUT/MIPS_wrapper_u0/PSLVERR
add wave -noupdate -expand -group {MIPS WRAPPRER} /SoC_tb/DUT/MIPS_wrapper_u0/PSTRB
add wave -noupdate -expand -group {MIPS WRAPPRER} /SoC_tb/DUT/MIPS_wrapper_u0/PWDATA
add wave -noupdate -expand -group {MIPS WRAPPRER} /SoC_tb/DUT/MIPS_wrapper_u0/PWRITE
add wave -noupdate -expand -group {MIPS WRAPPRER} /SoC_tb/DUT/MIPS_wrapper_u0/SETUP
add wave -noupdate -expand -group {MIPS WRAPPRER} /SoC_tb/DUT/MIPS_wrapper_u0/transfer
add wave -noupdate -expand -group {MIPS WRAPPRER} /SoC_tb/DUT/MIPS_wrapper_u0/transfer_reg
add wave -noupdate -expand -group PC /SoC_tb/DUT/MIPS_wrapper_u0/MIPS_u0/DP/stall
add wave -noupdate -expand -group PC /SoC_tb/DUT/MIPS_wrapper_u0/MIPS_u0/DP/pc_reg/pc
add wave -noupdate -expand -group PC /SoC_tb/DUT/MIPS_wrapper_u0/MIPS_u0/DP/pc_reg/pc_bar
add wave -noupdate -expand -group {UART WRAPPER} -expand /SoC_tb/DUT/UART_wrapper_u0/UART_u0/register_file
add wave -noupdate -expand -group {UART WRAPPER} /SoC_tb/DUT/UART_wrapper_u0/UART_u0/CLK
add wave -noupdate -expand -group {UART WRAPPER} /SoC_tb/DUT/UART_wrapper_u0/UART_u0/ADDR
add wave -noupdate -expand -group {UART WRAPPER} /SoC_tb/DUT/UART_wrapper_u0/UART_u0/control_reg
add wave -noupdate -expand -group {UART WRAPPER} /SoC_tb/DUT/UART_wrapper_u0/UART_u0/ENABLE
add wave -noupdate -expand -group {UART WRAPPER} /SoC_tb/DUT/UART_wrapper_u0/UART_u0/i
add wave -noupdate -expand -group {UART WRAPPER} /SoC_tb/DUT/UART_wrapper_u0/UART_u0/RDATA
add wave -noupdate -expand -group {UART WRAPPER} /SoC_tb/DUT/UART_wrapper_u0/UART_u0/READY
add wave -noupdate -expand -group {UART WRAPPER} /SoC_tb/DUT/UART_wrapper_u0/UART_u0/REGISTERS_COUNT
add wave -noupdate -expand -group {UART WRAPPER} /SoC_tb/DUT/UART_wrapper_u0/UART_u0/RESETn
add wave -noupdate -expand -group {UART WRAPPER} /SoC_tb/DUT/UART_wrapper_u0/UART_u0/RX_IN
add wave -noupdate -expand -group {UART WRAPPER} /SoC_tb/DUT/UART_wrapper_u0/UART_u0/RX_P_DATA_reg
add wave -noupdate -expand -group {UART WRAPPER} /SoC_tb/DUT/UART_wrapper_u0/UART_u0/RX_prescale_reg
add wave -noupdate -expand -group {UART WRAPPER} /SoC_tb/DUT/UART_wrapper_u0/UART_u0/SEL
add wave -noupdate -expand -group {UART WRAPPER} /SoC_tb/DUT/UART_wrapper_u0/UART_u0/SLVERR
add wave -noupdate -expand -group {UART WRAPPER} /SoC_tb/DUT/UART_wrapper_u0/UART_u0/status_reg
add wave -noupdate -expand -group {UART WRAPPER} /SoC_tb/DUT/UART_wrapper_u0/UART_u0/STRB
add wave -noupdate -expand -group {UART WRAPPER} /SoC_tb/DUT/UART_wrapper_u0/UART_u0/TX_OUT
add wave -noupdate -expand -group {UART WRAPPER} /SoC_tb/DUT/UART_wrapper_u0/UART_u0/TX_P_DATA_reg
add wave -noupdate -expand -group {UART WRAPPER} /SoC_tb/DUT/UART_wrapper_u0/UART_u0/UART_ADDR
add wave -noupdate -expand -group {UART WRAPPER} /SoC_tb/DUT/UART_wrapper_u0/UART_u0/WDATA
add wave -noupdate -expand -group {UART WRAPPER} /SoC_tb/DUT/UART_wrapper_u0/UART_u0/WRITE
add wave -noupdate -expand -group {ADDRESS DECODER} -radix unsigned /SoC_tb/DUT/address_decoder_u0/PADDR
add wave -noupdate -expand -group {ADDRESS DECODER} /SoC_tb/DUT/address_decoder_u0/PSEL
add wave -noupdate -expand -group {ADDRESS DECODER} /SoC_tb/DUT/address_decoder_u0/PSEL0
add wave -noupdate -expand -group {DATA MEMORY} /SoC_tb/DUT/MIPS_wrapper_u0/MIPS_u0/D_mem/A
add wave -noupdate -expand -group {DATA MEMORY} /SoC_tb/DUT/MIPS_wrapper_u0/MIPS_u0/D_mem/CLK
add wave -noupdate -expand -group {DATA MEMORY} /SoC_tb/DUT/MIPS_wrapper_u0/MIPS_u0/D_mem/data_mem
add wave -noupdate -expand -group {DATA MEMORY} /SoC_tb/DUT/MIPS_wrapper_u0/MIPS_u0/D_mem/DEPTH
add wave -noupdate -expand -group {DATA MEMORY} /SoC_tb/DUT/MIPS_wrapper_u0/MIPS_u0/D_mem/RD
add wave -noupdate -expand -group {DATA MEMORY} /SoC_tb/DUT/MIPS_wrapper_u0/MIPS_u0/D_mem/WD
add wave -noupdate -expand -group {DATA MEMORY} /SoC_tb/DUT/MIPS_wrapper_u0/MIPS_u0/D_mem/WE
add wave -noupdate -expand -group {INSTRUCTION MEMORY} /SoC_tb/DUT/MIPS_wrapper_u0/MIPS_u0/I_mem/A
add wave -noupdate -expand -group {INSTRUCTION MEMORY} /SoC_tb/DUT/MIPS_wrapper_u0/MIPS_u0/I_mem/DEPTH
add wave -noupdate -expand -group {INSTRUCTION MEMORY} /SoC_tb/DUT/MIPS_wrapper_u0/MIPS_u0/I_mem/instr_mem
add wave -noupdate -expand -group {INSTRUCTION MEMORY} /SoC_tb/DUT/MIPS_wrapper_u0/MIPS_u0/I_mem/RD
add wave -noupdate -expand -group {REG FILE} /SoC_tb/DUT/MIPS_wrapper_u0/MIPS_u0/DP/reg_file/A1
add wave -noupdate -expand -group {REG FILE} /SoC_tb/DUT/MIPS_wrapper_u0/MIPS_u0/DP/reg_file/A2
add wave -noupdate -expand -group {REG FILE} /SoC_tb/DUT/MIPS_wrapper_u0/MIPS_u0/DP/reg_file/A3
add wave -noupdate -expand -group {REG FILE} /SoC_tb/DUT/MIPS_wrapper_u0/MIPS_u0/DP/reg_file/CLK
add wave -noupdate -expand -group {REG FILE} /SoC_tb/DUT/MIPS_wrapper_u0/MIPS_u0/DP/reg_file/i
add wave -noupdate -expand -group {REG FILE} /SoC_tb/DUT/MIPS_wrapper_u0/MIPS_u0/DP/reg_file/RD1
add wave -noupdate -expand -group {REG FILE} /SoC_tb/DUT/MIPS_wrapper_u0/MIPS_u0/DP/reg_file/RD2
add wave -noupdate -expand -group {REG FILE} /SoC_tb/DUT/MIPS_wrapper_u0/MIPS_u0/DP/reg_file/Reg_File
add wave -noupdate -expand -group {REG FILE} /SoC_tb/DUT/MIPS_wrapper_u0/MIPS_u0/DP/reg_file/WD3
add wave -noupdate -expand -group {REG FILE} /SoC_tb/DUT/MIPS_wrapper_u0/MIPS_u0/DP/reg_file/WE3
add wave -noupdate -expand -group UART /SoC_tb/DUT/UART_wrapper_u0/UART_u0/ADDR
add wave -noupdate -expand -group UART /SoC_tb/DUT/UART_wrapper_u0/UART_u0/CLK
add wave -noupdate -expand -group UART /SoC_tb/DUT/UART_wrapper_u0/UART_u0/control_reg
add wave -noupdate -expand -group UART /SoC_tb/DUT/UART_wrapper_u0/UART_u0/READ_UART
add wave -noupdate -expand -group UART /SoC_tb/DUT/UART_wrapper_u0/UART_u0/RX_DATA_VALID
add wave -noupdate -expand -group UART /SoC_tb/DUT/UART_wrapper_u0/UART_u0/RX_DATA_VALID_reg
add wave -noupdate -expand -group UART /SoC_tb/DUT/UART_wrapper_u0/UART_u0/status_reg
add wave -noupdate -expand -group UART /SoC_tb/DUT/UART_wrapper_u0/UART_u0/ENABLE
add wave -noupdate -expand -group UART /SoC_tb/DUT/UART_wrapper_u0/UART_u0/i
add wave -noupdate -expand -group UART /SoC_tb/DUT/UART_wrapper_u0/UART_u0/RDATA
add wave -noupdate -expand -group UART /SoC_tb/DUT/UART_wrapper_u0/UART_u0/READY
add wave -noupdate -expand -group UART -expand /SoC_tb/DUT/UART_wrapper_u0/UART_u0/register_file
add wave -noupdate -expand -group UART /SoC_tb/DUT/UART_wrapper_u0/UART_u0/RESETn
add wave -noupdate -expand -group UART /SoC_tb/DUT/UART_wrapper_u0/UART_u0/RX_IN
add wave -noupdate -expand -group UART /SoC_tb/DUT/UART_wrapper_u0/UART_u0/RX_P_DATA_reg
add wave -noupdate -expand -group UART /SoC_tb/DUT/UART_wrapper_u0/UART_u0/RX_prescale_reg
add wave -noupdate -expand -group UART /SoC_tb/DUT/UART_wrapper_u0/UART_u0/SEL
add wave -noupdate -expand -group UART /SoC_tb/DUT/UART_wrapper_u0/UART_u0/SLVERR
add wave -noupdate -expand -group UART /SoC_tb/DUT/UART_wrapper_u0/UART_u0/status_reg
add wave -noupdate -expand -group UART /SoC_tb/DUT/UART_wrapper_u0/UART_u0/STRB
add wave -noupdate -expand -group UART /SoC_tb/DUT/UART_wrapper_u0/UART_u0/TX_OUT
add wave -noupdate -expand -group UART /SoC_tb/DUT/UART_wrapper_u0/UART_u0/TX_P_DATA_reg
add wave -noupdate -expand -group UART -radix unsigned /SoC_tb/DUT/UART_wrapper_u0/UART_u0/UART_ADDR
add wave -noupdate -expand -group UART /SoC_tb/DUT/UART_wrapper_u0/UART_u0/WDATA
add wave -noupdate -expand -group UART /SoC_tb/DUT/UART_wrapper_u0/UART_u0/WRITE
add wave -noupdate -expand -group {WD3 MUX} /SoC_tb/DUT/MIPS_wrapper_u0/MIPS_u0/DP/WD3_mux/in0
add wave -noupdate -expand -group {WD3 MUX} /SoC_tb/DUT/MIPS_wrapper_u0/MIPS_u0/DP/WD3_mux/in1
add wave -noupdate -expand -group {WD3 MUX} /SoC_tb/DUT/MIPS_wrapper_u0/MIPS_u0/DP/WD3_mux/N
add wave -noupdate -expand -group {WD3 MUX} /SoC_tb/DUT/MIPS_wrapper_u0/MIPS_u0/DP/WD3_mux/out
add wave -noupdate -expand -group {WD3 MUX} /SoC_tb/DUT/MIPS_wrapper_u0/MIPS_u0/DP/WD3_mux/s
add wave -noupdate -expand -group {UART TX} /SoC_tb/DUT/UART_wrapper_u0/UART_u0/UART_TX_u0/fsm/cs
add wave -noupdate -expand -group {UART TX} -color Magenta /SoC_tb/DUT/UART_wrapper_u0/UART_u0/UART_TX_u0/TX_OUT
add wave -noupdate -expand -group {UART TX} /SoC_tb/DUT/UART_wrapper_u0/UART_u0/UART_TX_u0/CLK
add wave -noupdate -expand -group {UART TX} -color Magenta /SoC_tb/DUT/UART_wrapper_u0/UART_u0/UART_TX_u0/BUSY
add wave -noupdate -expand -group {UART TX} /SoC_tb/DUT/UART_wrapper_u0/UART_u0/UART_TX_u0/DATA_VALID
add wave -noupdate -expand -group {UART TX} /SoC_tb/DUT/UART_wrapper_u0/UART_u0/UART_TX_u0/MUX_SEL
add wave -noupdate -expand -group {UART TX} -radix binary /SoC_tb/DUT/UART_wrapper_u0/UART_u0/UART_TX_u0/P_DATA
add wave -noupdate -expand -group {UART TX} /SoC_tb/DUT/UART_wrapper_u0/UART_u0/UART_TX_u0/PAR_BIT
add wave -noupdate -expand -group {UART TX} /SoC_tb/DUT/UART_wrapper_u0/UART_u0/UART_TX_u0/PAR_EN
add wave -noupdate -expand -group {UART TX} /SoC_tb/DUT/UART_wrapper_u0/UART_u0/UART_TX_u0/PAR_TYPE
add wave -noupdate -expand -group {UART TX} /SoC_tb/DUT/UART_wrapper_u0/UART_u0/UART_TX_u0/RST
add wave -noupdate -expand -group {UART TX} /SoC_tb/DUT/UART_wrapper_u0/UART_u0/UART_TX_u0/SER_DATA
add wave -noupdate -expand -group {UART TX} /SoC_tb/DUT/UART_wrapper_u0/UART_u0/UART_TX_u0/fsm/ns
add wave -noupdate -expand -group {UART TX} /SoC_tb/DUT/UART_wrapper_u0/UART_u0/UART_TX_u0/SER_DONE
add wave -noupdate -expand -group {UART TX} /SoC_tb/DUT/UART_wrapper_u0/UART_u0/UART_TX_u0/SER_EN
add wave -noupdate -expand -group {UART RX} /SoC_tb/DUT/UART_wrapper_u0/UART_u0/UART_RX_u0/FSM_u0/cs
add wave -noupdate -expand -group {UART RX} /SoC_tb/DUT/UART_wrapper_u0/UART_u0/UART_RX_u0/bit_count
add wave -noupdate -expand -group {UART RX} /SoC_tb/DUT/UART_wrapper_u0/UART_u0/UART_RX_u0/CLK
add wave -noupdate -expand -group {UART RX} /SoC_tb/DUT/UART_wrapper_u0/UART_u0/UART_RX_u0/dat_sam_en
add wave -noupdate -expand -group {UART RX} -color Gold /SoC_tb/DUT/UART_wrapper_u0/UART_u0/UART_RX_u0/Data_Valid
add wave -noupdate -expand -group {UART RX} /SoC_tb/DUT/UART_wrapper_u0/UART_u0/UART_RX_u0/deser_en
add wave -noupdate -expand -group {UART RX} /SoC_tb/DUT/UART_wrapper_u0/UART_u0/UART_RX_u0/edge_bit_en
add wave -noupdate -expand -group {UART RX} /SoC_tb/DUT/UART_wrapper_u0/UART_u0/UART_RX_u0/edge_count
add wave -noupdate -expand -group {UART RX} /SoC_tb/DUT/UART_wrapper_u0/UART_u0/UART_RX_u0/P_DATA
add wave -noupdate -expand -group {UART RX} /SoC_tb/DUT/UART_wrapper_u0/UART_u0/UART_RX_u0/par_chk_en
add wave -noupdate -expand -group {UART RX} /SoC_tb/DUT/UART_wrapper_u0/UART_u0/UART_RX_u0/PAR_EN
add wave -noupdate -expand -group {UART RX} /SoC_tb/DUT/UART_wrapper_u0/UART_u0/UART_RX_u0/PAR_TYP
add wave -noupdate -expand -group {UART RX} /SoC_tb/DUT/UART_wrapper_u0/UART_u0/UART_RX_u0/Parity_Error
add wave -noupdate -expand -group {UART RX} /SoC_tb/DUT/UART_wrapper_u0/UART_u0/UART_RX_u0/Prescale
add wave -noupdate -expand -group {UART RX} /SoC_tb/DUT/UART_wrapper_u0/UART_u0/UART_RX_u0/RST
add wave -noupdate -expand -group {UART RX} /SoC_tb/DUT/UART_wrapper_u0/UART_u0/UART_RX_u0/RX_IN
add wave -noupdate -expand -group {UART RX} /SoC_tb/DUT/UART_wrapper_u0/UART_u0/UART_RX_u0/sampled_bit
add wave -noupdate -expand -group {UART RX} /SoC_tb/DUT/UART_wrapper_u0/UART_u0/UART_RX_u0/sampling_done
add wave -noupdate -expand -group {UART RX} /SoC_tb/DUT/UART_wrapper_u0/UART_u0/UART_RX_u0/Stop_Error
add wave -noupdate -expand -group {UART RX} /SoC_tb/DUT/UART_wrapper_u0/UART_u0/UART_RX_u0/stp_chk_en
add wave -noupdate -expand -group {UART RX} /SoC_tb/DUT/UART_wrapper_u0/UART_u0/UART_RX_u0/strt_chk_en
add wave -noupdate -expand -group {UART RX} /SoC_tb/DUT/UART_wrapper_u0/UART_u0/UART_RX_u0/strt_glitch
add wave -noupdate /SoC_tb/DUT/MIPS_wrapper_u0/MIPS_u0/DP/transfer
add wave -noupdate /SoC_tb/DUT/MIPS_wrapper_u0/MIPS_u0/DP/transfer_reg
add wave -noupdate -expand -group {DP SIGNALS} /SoC_tb/DUT/MIPS_wrapper_u0/MIPS_u0/DP/access_done
add wave -noupdate -expand -group {DP SIGNALS} /SoC_tb/DUT/MIPS_wrapper_u0/MIPS_u0/DP/ALUControl
add wave -noupdate -expand -group {DP SIGNALS} /SoC_tb/DUT/MIPS_wrapper_u0/MIPS_u0/DP/ALUResult
add wave -noupdate -expand -group {DP SIGNALS} /SoC_tb/DUT/MIPS_wrapper_u0/MIPS_u0/DP/ALUSrc
add wave -noupdate -expand -group {DP SIGNALS} /SoC_tb/DUT/MIPS_wrapper_u0/MIPS_u0/DP/CLK
add wave -noupdate -expand -group {DP SIGNALS} /SoC_tb/DUT/MIPS_wrapper_u0/MIPS_u0/DP/ENABLE
add wave -noupdate -expand -group {DP SIGNALS} /SoC_tb/DUT/MIPS_wrapper_u0/MIPS_u0/DP/instr
add wave -noupdate -expand -group {DP SIGNALS} /SoC_tb/DUT/MIPS_wrapper_u0/MIPS_u0/DP/j_shifter_out
add wave -noupdate -expand -group {DP SIGNALS} /SoC_tb/DUT/MIPS_wrapper_u0/MIPS_u0/DP/Jump
add wave -noupdate -expand -group {DP SIGNALS} /SoC_tb/DUT/MIPS_wrapper_u0/MIPS_u0/DP/MemtoReg
add wave -noupdate -expand -group {DP SIGNALS} /SoC_tb/DUT/MIPS_wrapper_u0/MIPS_u0/DP/P_regWrite
add wave -noupdate -expand -group {DP SIGNALS} /SoC_tb/DUT/MIPS_wrapper_u0/MIPS_u0/DP/P_regWrite_reg
add wave -noupdate -expand -group {DP SIGNALS} /SoC_tb/DUT/MIPS_wrapper_u0/MIPS_u0/DP/PC
add wave -noupdate -expand -group {DP SIGNALS} /SoC_tb/DUT/MIPS_wrapper_u0/MIPS_u0/DP/PC_bar
add wave -noupdate -expand -group {DP SIGNALS} /SoC_tb/DUT/MIPS_wrapper_u0/MIPS_u0/DP/pc_mux_0_out
add wave -noupdate -expand -group {DP SIGNALS} /SoC_tb/DUT/MIPS_wrapper_u0/MIPS_u0/DP/PCBranch
add wave -noupdate -expand -group {DP SIGNALS} /SoC_tb/DUT/MIPS_wrapper_u0/MIPS_u0/DP/PCJump
add wave -noupdate -expand -group {DP SIGNALS} /SoC_tb/DUT/MIPS_wrapper_u0/MIPS_u0/DP/PCPlus4
add wave -noupdate -expand -group {DP SIGNALS} /SoC_tb/DUT/MIPS_wrapper_u0/MIPS_u0/DP/PCSrc
add wave -noupdate -expand -group {DP SIGNALS} /SoC_tb/DUT/MIPS_wrapper_u0/MIPS_u0/DP/RDATA
add wave -noupdate -expand -group {DP SIGNALS} /SoC_tb/DUT/MIPS_wrapper_u0/MIPS_u0/DP/ReadData_mem
add wave -noupdate -expand -group {DP SIGNALS} /SoC_tb/DUT/MIPS_wrapper_u0/MIPS_u0/DP/READY
add wave -noupdate -expand -group {DP SIGNALS} /SoC_tb/DUT/MIPS_wrapper_u0/MIPS_u0/DP/RegDst
add wave -noupdate -expand -group {DP SIGNALS} /SoC_tb/DUT/MIPS_wrapper_u0/MIPS_u0/DP/RegWrite
add wave -noupdate -expand -group {DP SIGNALS} /SoC_tb/DUT/MIPS_wrapper_u0/MIPS_u0/DP/RESETn
add wave -noupdate -expand -group {DP SIGNALS} /SoC_tb/DUT/MIPS_wrapper_u0/MIPS_u0/DP/Result
add wave -noupdate -expand -group {DP SIGNALS} /SoC_tb/DUT/MIPS_wrapper_u0/MIPS_u0/DP/shifted_imm
add wave -noupdate -expand -group {DP SIGNALS} /SoC_tb/DUT/MIPS_wrapper_u0/MIPS_u0/DP/SignImm
add wave -noupdate -expand -group {DP SIGNALS} /SoC_tb/DUT/MIPS_wrapper_u0/MIPS_u0/DP/SrcA
add wave -noupdate -expand -group {DP SIGNALS} /SoC_tb/DUT/MIPS_wrapper_u0/MIPS_u0/DP/SrcB
add wave -noupdate -expand -group {DP SIGNALS} /SoC_tb/DUT/MIPS_wrapper_u0/MIPS_u0/DP/stall
add wave -noupdate -expand -group {DP SIGNALS} /SoC_tb/DUT/MIPS_wrapper_u0/MIPS_u0/DP/stall_reg
add wave -noupdate -expand -group {DP SIGNALS} /SoC_tb/DUT/MIPS_wrapper_u0/MIPS_u0/DP/transfer
add wave -noupdate -expand -group {DP SIGNALS} /SoC_tb/DUT/MIPS_wrapper_u0/MIPS_u0/DP/transfer_reg
add wave -noupdate -expand -group {DP SIGNALS} /SoC_tb/DUT/MIPS_wrapper_u0/MIPS_u0/DP/WD3
add wave -noupdate -expand -group {DP SIGNALS} /SoC_tb/DUT/MIPS_wrapper_u0/MIPS_u0/DP/WDATA
add wave -noupdate -expand -group {DP SIGNALS} /SoC_tb/DUT/MIPS_wrapper_u0/MIPS_u0/DP/WRITE
add wave -noupdate -expand -group {DP SIGNALS} /SoC_tb/DUT/MIPS_wrapper_u0/MIPS_u0/DP/WriteData_mem
add wave -noupdate -expand -group {DP SIGNALS} /SoC_tb/DUT/MIPS_wrapper_u0/MIPS_u0/DP/WriteReg
add wave -noupdate -expand -group {DP SIGNALS} /SoC_tb/DUT/MIPS_wrapper_u0/MIPS_u0/DP/Zero
add wave -noupdate -expand -group {CU SIGNALS} /SoC_tb/DUT/MIPS_wrapper_u0/MIPS_u0/CU/ALUControl
add wave -noupdate -expand -group {CU SIGNALS} /SoC_tb/DUT/MIPS_wrapper_u0/MIPS_u0/CU/ALUOp
add wave -noupdate -expand -group {CU SIGNALS} /SoC_tb/DUT/MIPS_wrapper_u0/MIPS_u0/CU/ALUSrc
add wave -noupdate -expand -group {CU SIGNALS} /SoC_tb/DUT/MIPS_wrapper_u0/MIPS_u0/CU/Branch
add wave -noupdate -expand -group {CU SIGNALS} /SoC_tb/DUT/MIPS_wrapper_u0/MIPS_u0/CU/Funct
add wave -noupdate -expand -group {CU SIGNALS} /SoC_tb/DUT/MIPS_wrapper_u0/MIPS_u0/CU/Jump
add wave -noupdate -expand -group {CU SIGNALS} /SoC_tb/DUT/MIPS_wrapper_u0/MIPS_u0/CU/MemtoReg
add wave -noupdate -expand -group {CU SIGNALS} /SoC_tb/DUT/MIPS_wrapper_u0/MIPS_u0/CU/MemWrite
add wave -noupdate -expand -group {CU SIGNALS} /SoC_tb/DUT/MIPS_wrapper_u0/MIPS_u0/CU/Opcode
add wave -noupdate -expand -group {CU SIGNALS} /SoC_tb/DUT/MIPS_wrapper_u0/MIPS_u0/CU/PCSrc
add wave -noupdate -expand -group {CU SIGNALS} /SoC_tb/DUT/MIPS_wrapper_u0/MIPS_u0/CU/RegDst
add wave -noupdate -expand -group {CU SIGNALS} /SoC_tb/DUT/MIPS_wrapper_u0/MIPS_u0/CU/RegWrite
add wave -noupdate -expand -group {CU SIGNALS} /SoC_tb/DUT/MIPS_wrapper_u0/MIPS_u0/CU/Zero
add wave -noupdate -expand -group CLR /SoC_tb/DUT/UART_wrapper_u0/UART_u0/CLR_DataValid_u0/clk
add wave -noupdate -expand -group CLR /SoC_tb/DUT/UART_wrapper_u0/UART_u0/CLR_DataValid_u0/in0
add wave -noupdate -expand -group CLR /SoC_tb/DUT/UART_wrapper_u0/UART_u0/CLR_DataValid_u0/in1
add wave -noupdate -expand -group CLR /SoC_tb/DUT/UART_wrapper_u0/UART_u0/CLR_DataValid_u0/out
add wave -noupdate -expand -group CLR /SoC_tb/DUT/UART_wrapper_u0/UART_u0/CLR_DataValid_u0/rst_n
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {558230276 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 440
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {459503713 ps} {710422700 ps}
