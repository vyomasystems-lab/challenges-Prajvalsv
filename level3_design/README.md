GITPOD ID

![image](https://user-images.githubusercontent.com/109435612/181626428-e91ce9dc-98e1-4f1d-abb6-b3bb832143ce.png)


VERIFICATION ENVIRONMENT

The CoCoTb based Python test is developed as explained. The test drives inputs to the Design Under Test (seq_detect module here) which takes in 1-bit input(0 or 1)
and gives output 1 if SEQUENCE 1001 is detcted

The values are assigned to the inp_bit port and checked with design output by using assert statement

![image](https://user-images.githubusercontent.com/109435612/181629265-6d3186e3-2399-47f2-9d1a-7cdc0b607c66.png)


DESIGN WITHOUT ERRORS/BUG IS VERIFIED WITH TOOL

![image](https://user-images.githubusercontent.com/109435612/181628651-623245e3-59bf-43fa-a7e4-13518fbff93e.png)


The design proposed is pure design without errors 

ADDING BUGS TO DESIGN

Original code 1

![image](https://user-images.githubusercontent.com/109435612/181629941-1da74b09-c346-4330-b995-f30df991bc4b.png)

BUGGY CODE

![image](https://user-images.githubusercontent.com/109435612/181630048-15c4f1d6-1619-407d-8e01-98182f7b78a5.png)

SHOWING OF FAIL TEST CASE IN TOOL BECAUSE OF BUG INSERTED IN DESIGN

![image](https://user-images.githubusercontent.com/109435612/181630323-297b747e-ac40-43d7-859a-d7d00da688a8.png)




