![image](https://github.com/user-attachments/assets/55b326c4-2a83-4152-bc7f-0e1f558b3c61)# SoC
## Introduction
A System on Chip (SoC) integrates a microcontroller's core components, including the CPU, memory, input/output (I/O) ports, and various peripherals, all into a single chip.
the Processor know how to access each peripheral using memory maped I/O. In a SoC, instead of having the peripherals’ control and data as inputs, they are stored in registers 
(register layering) or small memories to be accessed by the processor using load/store instructions.
 ### Memory Mapped I/O
 In memory-mapped I/O, peripherals are mapped to the memory address space of the processor. This means that the I/O devices are treated like memory locations and can be accessed
 using the same read and write instructions as memory.
 ### Register layering
These registers are accessed with offsets from the base address mentioned in the memory map. they have the required information for the peripheral to work. They can be control 
, status or data registers.

 ## Implementation
 Here a simple system on chip was developed containig a processor (single-cycle MIPS) and a single peripheral (UART) with an APB bus.
  ### Block diagram
  
  ![block drawio](https://github.com/user-attachments/assets/4f6222ce-d7c1-4886-930d-b5cb7af11e49)

 ### MIPS processor
 
 ### APB bus
  ##### APB signals
  
  ![image](https://github.com/user-attachments/assets/98bb6ff3-965c-42e1-9625-3b621091fa5f)

  ![image](https://github.com/user-attachments/assets/aa005c0a-5f7b-413a-8526-6eb81abd57bf)
  
  #### Write transfer

  ![image](https://github.com/user-attachments/assets/51b985c2-b908-4c18-889f-3989e4cd6f6f) 

  ![image](https://github.com/user-attachments/assets/86409da5-b0d5-4177-a1dd-be8868b8a38b)

  #### Read transfer

  ![image](https://github.com/user-attachments/assets/ea576d8a-7394-4564-85f5-855d455e76e3)

  ![image](https://github.com/user-attachments/assets/648d51bc-8185-49ec-9d1d-a0eedc989a07)

  #### FSM

  ![image](https://github.com/user-attachments/assets/339e1ef7-e514-458b-a434-6744ed8118e3)

 ### UART 
 
  ![image](https://github.com/user-attachments/assets/e297f76c-fee2-4f44-9b3f-f68dddb6cb7a)

  #### UART TX
  
  ![image](https://github.com/user-attachments/assets/14e69cb8-9f6b-467e-9407-1b13b8c082d8)


  #### UART RX
  
  ![image](https://github.com/user-attachments/assets/879108fa-b4fc-4419-ba61-9e627f01e887)

  

 
