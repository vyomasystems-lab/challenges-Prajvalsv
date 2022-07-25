ID OF GIITPOD

![image](https://user-images.githubusercontent.com/109435612/180756226-914199a5-6c76-4833-92d0-61585375a9d9.png)

VERIFICATION ENVIRONMENT

The CoCoTb based Python test is developed as explained. The test drives inputs to the Design Under Test (seq_detect module here) which takes in 1-bit input(0 or 1)  
and gives output 1 if SEQUENCE 1011 is detcted

The values are assigned to the inp_bit port and checked with design output by using assert statement

![image](https://user-images.githubusercontent.com/109435612/180756809-dae1937c-466e-4e22-ba01-035e64817aee.png)

BUG IDENTIFIED BY TESTING IN TOOL

![image](https://user-images.githubusercontent.com/109435612/180756974-dc806988-3286-41e6-a14b-5282a4cf8703.png)

Test failed here because it is not designed properly to detcect SEQUENCE 1011

DESIGN BUGs
1
![image](https://user-images.githubusercontent.com/109435612/180757327-9549ad0f-9365-40f8-ba95-f65a704480b0.png)
2
![image](https://user-images.githubusercontent.com/109435612/180757511-b137d282-b283-4143-be60-2853983c3306.png)
3
![image](https://user-images.githubusercontent.com/109435612/180757690-b9bc1444-44c3-4d15-ad80-b1830acacde5.png)

DESIGN BUGS FIXED AND REPLACED WITH APPROPRIATE CODES AND ASSIGNMENTS

1
![image](https://user-images.githubusercontent.com/109435612/180758119-157872f8-89d1-4362-bfcf-e5f8c18d152b.png)
2
![image](https://user-images.githubusercontent.com/109435612/180758159-25244c3f-3788-4e33-a5d3-995086db1c2d.png)
3
![image](https://user-images.githubusercontent.com/109435612/180758209-caefdbde-13e9-4463-a87a-b71645da379e.png)
 default statement is added to obtain good coverage
 
 DESIGN TEST AFTER EDITING DESIGN WITH CORRECT SELECT VALUES
 
 ![image](https://user-images.githubusercontent.com/109435612/180758423-472fd4e2-69e2-499f-b2e1-8cf4b7a94eac.png)


