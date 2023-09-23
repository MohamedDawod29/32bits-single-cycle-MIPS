# 32bits-single-cycle-MIPs
-MIPS architecture is a type of the RISC (Reduced Instruction Set Computer) design philosophy, which aims to minimize complexity and optimizing performance. It uses a fixed instruction with a length of 32 bits, making instruction decoding and execution easy. 
The design allows only a small set of instructions, focusing on simple operations while ignoring complex instructions that are rarely used.

-MIPS architecture is byte-addressed, not word-addressed.

-In the Single Cycle MIPS architecture, each instruction is executed in a single clock cycle. This means that the entire instruction fetch, decode, execute, and write-back stages are completed within a single cycle.

![fetch](https://github.com/MohamedDawod29/32bits-single-cycle-MIPs/assets/138527948/e4a2eb69-3953-4e14-aa32-d9df6fc483e9)


-MIPS architecture provides instructions like:

1-lw ---> lw   rt, imm(rs) .

2-sw ---> sw   rt, imm(rs) .

3-addi ---> addi rt, rs, imm .

4-beq.

5-Jal& j.

6-R type like : [add / sub / slt / mul].

-In MIPS architecture there are 3 instruction formats:

1-R-Type:	register operands.

![Screenshot 2023-09-23 224653](https://github.com/MohamedDawod29/32bits-single-cycle-MIPs/assets/138527948/9cf3a9a0-a8f0-4f44-8e81-f51d7cd82795)

2-J-Type:	for jumping. 
![Screenshot 2023-09-23 224754](https://github.com/MohamedDawod29/32bits-single-cycle-MIPs/assets/138527948/923ac20d-71b2-4b58-a676-817e5c39d72e)

3-I-Type:	immediate operand.
![Screenshot 2023-09-23 224728](https://github.com/MohamedDawod29/32bits-single-cycle-MIPs/assets/138527948/4692c814-999f-4856-b395-43c36ba3cdbc)

-MIPS register set.

![image](https://github.com/MohamedDawod29/32bits-single-cycle-MIPs/assets/138527948/36ab30b8-1720-4cc6-96d2-7563e2ac3985)

-We can devide Single Cycle MIPS into Datapath and Control unit.
![cont](https://github.com/MohamedDawod29/32bits-single-cycle-MIPs/assets/138527948/7ef8a17d-3a9a-485a-9611-093a27eb60b5)

![Datapath ](https://github.com/MohamedDawod29/32bits-single-cycle-MIPs/assets/138527948/4dc86d59-3099-4d34-afc8-7d3fb0ace54e)   Complete single-cycle MIPS processor.



-Refrence: David M. Harris, Sarah L. Harris - Digital Design and Computer Architecture,2ndEdition,2012.





