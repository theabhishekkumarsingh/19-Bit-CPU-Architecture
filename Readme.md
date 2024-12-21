<img width="529" alt="Untitled" src="https://github.com/user-attachments/assets/4e352206-34f7-4463-8fb5-2d42b5accd57" />

# 19-Bit-CPU-Implementation-using-Verilog
The project shows the design and functioning of a basic CPU using Verilog.

## Approach
At first, the following components are designed individually and then interconnected to get a functional CPU.

* ALU 
* Arithmetic Unit
* Logic Unit
* Multiplexer
* Register (A, B, C, Instruction)
* Data Memory
* Instruction memory
* Program Counter
* Controller

### ALU
In computing, an arithmetic logic unit (ALU) is a combinational digital circuit that performs arithmetic and bitwise operations on integer binary numbers. It is a fundamental building block of many types of computing circuits, including the central processing unit (CPU) of computers, FPUs, and graphics processing units.

In our ALU, it controls two units: Arithmetic Unit and Logic Unit based on the value of mode input. The Arithmeic unit performs some arithmetic operations like addition, subtraction, division and product based on the value of opcode. The Logical Unit performs some logial operations like bit-wise and, or, nand, nor, xor, xnot, not based on the value of opcode.

### Multiplexers
This component is used to give different inputs to any other component based on different conditions.

### Register
It is used to store data like input operands, result outputs and insturctions.

### Memory
There are two memory units: Data Memory and Instruction Menory.

Data Memory is used store datas on which diiferent operations are to be performed.

Instruction Memory is used to store instructions. This is sent to the instruction register which takes the bits [18:14] as OPCODE and [13:0] as address to start with.

The different operations and the corresponding OPCODEs are mentioned below:

---need to update---

### Program Counter
It holds the address of the instructions stored in Instruction memory and controls the flow or sequence of operations performed by CPU.

### Control Unit(CU)
The control unit (CU) is a component of a computer's central processing unit (CPU) that directs the operation of the processor. In our CU, we used state machine approach. Three states are used to monitor the action of CPU. The three states used are reset, load and execute.

In reset state, we initialise all address to base address and code input to 0. All the signals going out from controller are 0.

In the load state, we initialise the Instruction register with the address and OPCODE to make sure the design is ready for execution.

In execute state, we provide the function required by the USER based in the Instruction set provided.

### CPU
Finally the CPU is implemented by interconnecting all the above components.
