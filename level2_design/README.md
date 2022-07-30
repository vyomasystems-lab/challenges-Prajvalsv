ID OF GIITPOD
![image](https://user-images.githubusercontent.com/109435612/180859696-e1ae4336-511f-4e87-9509-bb717eb25e9f.png)


VERIFICATION ENVIRONMENT

The CoCoTb based Python test is developed as explained. The test drives inputs to the Design Under Test  which takes 3 in 32-bit inputs 
and gives 33-bit output based on 32 bit instruction  line

The values are assigned to the sel port and checked with design output by using assert statement 


GIVEN INPUT TO CHECK DESIGN INITIALLY

![image](https://user-images.githubusercontent.com/109435612/181937548-a83d3f3e-6417-4a24-a88f-e82d29479c16.png)


BUG IDENTIFIED BY TESTING IN TOOL

![image](https://user-images.githubusercontent.com/109435612/180860294-45116c0e-9d57-458b-b778-4a0cbb0b27e2.png)


Test failed when instructor port  mav_putvalue_instr = 0x208756ac as shown in above figure
the design is showing that expected output is zero that need to rectified

