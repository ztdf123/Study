clc
clear all
[T,Y]=ode45('F',[0 1],[0;1;-1])