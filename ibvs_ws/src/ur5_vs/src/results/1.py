#coding:utf-8
import numpy as np
import matplotlib.pyplot as plt
import pylab
 
 
def plotData(x, y):
  length = len(y)
 
  pylab.figure(1)
 
  pylab.plot(x, y, 'rx')
  pylab.xlabel('x')
  pylab.ylabel('y')
 
  pylab.show()
 
x = []
y = []
 
 
x = [float(l.split()[0]) for l in open("camera_vel.txt")]
y = [float(l.split()[1]) for l in open("camera_vel.txt")]
 
 
plotData(x,y)

x = [float(l.split()[0]) for l in open("camera_vel.txt")]
y = [float(l.split()[2]) for l in open("camera_vel.txt")]
 
 
plotData(x,y)



