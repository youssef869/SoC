# Introduction
A System on Chip (SoC) integrates a microcontroller's core components, including the CPU, memory, input/output (I/O) ports, and various peripherals, all into a single chip.
the Processor know how to access each peripheral using memory maped I/O. In a SoC, instead of having the peripherals’ control and data as inputs, they are stored in registers 
(register layering) or small memories to be accessed by the processor using load/store instructions.
 ## Memory Mapped I/O
 In memory-mapped I/O, peripherals are mapped to the memory address space of the processor. This means that the I/O devices are treated like memory locations and can be accessed
 using the same read and write instructions as memory.
 ## Register layering
These registers are accessed with offsets from the base address mentioned in the memory map. they have the required information for the peripheral to work. They can be control 
, status or data registers.

 # Implementation
 Here a simple system on chip was developed containig a processor (single-cycle MIPS) and a single peripheral (UART) with an APB bus.
  ### Block diagram
  
  ![image](https://github.com/user-attachments/assets/8355fc55-74f0-4689-9512-778c5a33acc7)


 ## MIPS processor
  ### Data path

  ![image](https://github.com/user-attachments/assets/9a302184-c0e0-4176-82d5-e1ab52b47d77)

  ### Control unit

  ![image](https://github.com/user-attachments/assets/31bb48bd-817f-42fe-8610-fb9b9fa56482)

   #### Main decoder
   
   ![image](https://github.com/user-attachments/assets/32634e9b-0335-4c29-b7f5-b0bcc5923835)

   #### ALU decoder

   ![image](https://github.com/user-attachments/assets/3fadb4aa-55ac-4048-a4bd-4ab90331bfc4)

 ## APB bus
  #### APB signals
  
  ![image](https://github.com/user-attachments/assets/98bb6ff3-965c-42e1-9625-3b621091fa5f)

  ![image](https://github.com/user-attachments/assets/aa005c0a-5f7b-413a-8526-6eb81abd57bf)
  
  ### Write transfer

  ![image](https://github.com/user-attachments/assets/51b985c2-b908-4c18-889f-3989e4cd6f6f) 

  ![image](https://github.com/user-attachments/assets/86409da5-b0d5-4177-a1dd-be8868b8a38b)

  ### Read transfer

  ![image](https://github.com/user-attachments/assets/ea576d8a-7394-4564-85f5-855d455e76e3)

  ![image](https://github.com/user-attachments/assets/648d51bc-8185-49ec-9d1d-a0eedc989a07)

  ### FSM

  ![image](https://github.com/user-attachments/assets/55b326c4-2a83-4152-bc7f-0e1f558b3c61)

 ## UART 
 
  ![image](https://github.com/user-attachments/assets/e297f76c-fee2-4f44-9b3f-f68dddb6cb7a)

  ### UART TX
  
  ![image](https://github.com/user-attachments/assets/14e69cb8-9f6b-467e-9407-1b13b8c082d8)


  ### UART RX
  
  ![image](https://github.com/user-attachments/assets/879108fa-b4fc-4419-ba61-9e627f01e887)

  

 
