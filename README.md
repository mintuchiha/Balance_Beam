Two Link Robotic Arm Manipulator

This project is a variation of the famous inverted pendulum on a cart problem. 
In this project, we have two revolute joints in the where the second arm is rotated by -90 degrees in the y-direction. 

A motor is connected to the first arm which rotates it about the z0 axis and the goal is to raise the second arm upright (like a pendulum) about the z0 axis. 

This model was built using the Qanser Real-time Control (QUARC). 

 balance_beam.slx:

	This slx model is used to raise the bar into an upright position from rest and balance it. An external remote may be used to control the position of the first arm as well as change modes. 
	The model is a combination of Simulink Blocks and MATLAB files. 

Animator.m:

	This file is used to create a simulation of the real system.

TRANS0_1: 
	
	This file is the transformation matrix from reference frame 1 to 0.

TRANS1_2: 
	
	This file is the transformation matrix from reference frame 2 to 1.
