%Mediciones de instrumentos electronicos.
close all
clear all

%Frecuencia[Hz]/Punta 1[mA]//Punta 2[mA]/Punta 3[mA]
Datos_medidos=[38 11.6 8.4 19.2;
            60 15.6 9.6 20.8;
            78 18.4 10.8 21.2;
            88 19.6 11.2 21.6;
            186.4 23.2 14.8 21.2;
            291 23.2 17.6 20.8;
            377.6 22.8 19.6 21.2;
            480 22 20.4 21.6;
            1000 20.4 22.8 21.8;
            10400 19.6 24.8 21.6;
            48000 19.6 25.2 21.6;
            103700 20 24.8 21.2;
            190100 20 25.2 22;
            385400 19.6 22.8 22;
            604500 18.8 19.2 21.2;
            800500 18.4 17.6 21.6;
            1000000 17.2 16.8 21.6;
            1100000 16.8 16 20;
            1250000 16 15.8 20.8;
            1500000 14.8 15.6 20.4;
            2000000 13.2 14.8 21.2;
            2550000 11.6 7.2 21.8;
            3600000 9.6 4.8 20.8;
            4000000 8.8 4.4 20.4;
            4800000 7.6 4 20;
            5500000 6.8 3.6 19.6;
            5900000 6.4 3.6 19.2;
            6130000 6 3.6 19.6;
            6400000 5.4 3.4 18.2;
            7500000 5.2 2.8 18;
            8900000 5 2.5 19.2];
      
        
%Grafico las corrientes en funciones de la frecuencia
%figure(1)
%hold on
semilogx((Datos_medidos(:,1)),Datos_medidos(:,2),'r','linewidth',2)
hold on
semilogx((Datos_medidos(:,1)),Datos_medidos(:,3),'b','linewidth',2)
hold on
semilogx((Datos_medidos(:,1)),Datos_medidos(:,4),'c','linewidth',2)
xlabel('Frecuencia [Hz]')
ylabel('Corriente [mA]')
legend('Punta 1','Punta 2','Punta 3')

[datos1 delimitador1] = importdata('NewFile0.csv');
M1_tiempo=datos1.data(:,1);
M1_Canal_2=datos1.data(:,2);
M1_Canal_3=datos1.data(:,3);
M1_Canal_4=datos1.data(:,4);
figure(2)
hold on
plot(M1_tiempo,M1_Canal_2,'r','linewidth',2);
plot(M1_tiempo,M1_Canal_3,'b','linewidth',2);
plot(M1_tiempo,M1_Canal_4,'g','linewidth',2);
xlabel('tiempo [s]')
ylabel('Corriente [mA]')
legend('Punta 1','Punta 2','Punta 3')


[datos2 delimitador2] = importdata('NewFile1.csv');
M2_tiempo=datos2.data(:,1);
M2_Canal_2=datos2.data(:,2);
M2_Canal_3=datos2.data(:,3);
figure(3)
hold on
plot(M2_tiempo,M2_Canal_2,'r','linewidth',2);
plot(M2_tiempo,80*M2_Canal_3,'b','linewidth',2);
xlabel('tiempo [s]')
ylabel('Tensión [V]')
legend('Punta de tensión','80*Punta de corriente')

[datos3 delimitador1] = importdata('NewFile2.csv');
M3_tiempo=datos3.data(:,1);
M3_Canal_2=datos3.data(:,2);
M3_Canal_3=datos3.data(:,3);
M3_Canal_4=datos3.data(:,4);
figure(4)
hold on
plot(M3_tiempo,M3_Canal_2,'r','linewidth',2);
plot(M3_tiempo,M3_Canal_3,'b','linewidth',2);
plot(M3_tiempo,M3_Canal_4,'g','linewidth',2);
xlabel('tiempo [s]')
ylabel('Tensión [V]')
legend('Punta tensión','Punta 1','Punta 2')


