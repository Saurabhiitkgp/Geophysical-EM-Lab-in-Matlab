%CODE_FOR_ELECTROMAGNETIC_HCPL_PPL_VCPL_VCXL_OF_4RTH_LAYER_MODEL

clear all
close all 
clc

HCPL = importdata('HCPL_4rth_Layer.dat');
PPL  = importdata('PPL_4rth_layer.dat');
VCPL = importdata('VCPL_4rth_Layer.dat');
VCXL = importdata('VCXL_4rth_layer.dat');

x1 = HCPL(:, 1);
y1 = HCPL(:, 2);
x2 = PPL(:, 1);
y2 = PPL(:, 2);
x3 = VCPL(:, 1);
y3 = VCPL(:, 2);
x4 = VCXL(:, 1);
y4 = VCXL(:, 2);

x5 = HCPL(:, 1);
y5 = HCPL(:, 3);
x6 = PPL(:, 1);
y6 = PPL(:, 3);
x7 = VCPL(:, 1);
y7 = VCPL(:, 3);
x8 = VCXL(:, 1);
y8 = VCXL(:, 3);

x9 = HCPL(:, 1);
y9 = HCPL(:, 4);
x10 = PPL(:, 1);
y10= PPL(:, 4);
x11= VCPL(:, 1);
y11 = VCPL(:, 4);
x12= VCXL(:, 1);
y12= VCXL(:, 4);

x13 = HCPL(:, 1);
y13= HCPL(:, 5);
x14 = PPL(:, 1);
y14= PPL(:, 5);
x15= VCPL(:, 1);
y15 = VCPL(:,5);
x16= VCXL(:, 1);
y16= VCXL(:, 5);







subplot(2,2,1)
sgtitle('Curve for HCPL PPL VCPL VCXL','Linewidth',2)
semilogx(x1,y1,'red','Linewidth',1.5);
hold  on
semilogx(x2,y2,'blue','Linewidth',1.5);
semilogx(x3,y3,'green','Linewidth',1.5);
semilogx(x4,y4,'black','Linewidth',1.5);
xlabel('Frequency','Linewidth',1)
ylabel('Real value','Linewidth',1)

subplot(2,2,2)
semilogx(x5,y5,'red','Linewidth',1.5);
hold  on
semilogx(x6,y6,'blue','Linewidth',1.5);
semilogx(x7,y7,'green','Linewidth',1.5);
semilogx(x8,y8,'black','Linewidth',1.5);
xlabel('Frequency','Linewidth',1)
ylabel('Imaginary value','Linewidth',1)


subplot(2,2,3)
semilogx(x9,y9,'red','Linewidth',1.5);
hold  on
semilogx(x10,y10,'blue','Linewidth',1.5);
semilogx(x11,y11,'green','Linewidth',1.5);
semilogx(x12,y12,'black','Linewidth',1.5);
xlabel('Frequency','Linewidth',1)
ylabel('Amplitude','Linewidth',1)


subplot(2,2,4)
semilogx(x13,y13,'red','Linewidth',1.5);
hold  on
semilogx(x14,y14,'blue','Linewidth',1.5);
semilogx(x15,y15,'green','Linewidth',1.5);
semilogx(x16,y16,'black','Linewidth',1.5);
xlabel('Frequency','Linewidth',1)
ylabel('Phase','Linewidth',1)






