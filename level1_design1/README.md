ID of GIITPOD
![Screenshot (18)](https://user-images.githubusercontent.com/109435612/180608151-c65117c6-e81d-426a-acf7-dbd77619ae60.png)

VERIFICATION ENVIRONMENT

The CoCoTb based Python test is developed as explained. The test drives inputs to the Design Under Test (MUX module here) which takes in 2-bit inputs inp0 to inp30 and gives 2-bit output based on sel line

The values are assigned to the sel port and checked with design output by using assert statement
![image](https://user-images.githubusercontent.com/109435612/180640018-9fdface2-e562-40ed-a13e-2a9e93b97f5d.png)

BUG IDENTIFIED BY TESTING IN TOOL
![image](https://user-images.githubusercontent.com/109435612/180640065-ca3e54d0-f503-458d-b77b-230e6d70dc3b.png)
 Test failed when select port line value is 13 or 01101 bcoz in design two different output are assigned to same select line as shown
 ![image](https://user-images.githubusercontent.com/109435612/180640105-1008c3b3-99d3-4f19-9a43-bfd041f9e31c.png)
