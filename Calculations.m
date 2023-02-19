%{
Project Lab 4 Calculations
%} 

%{
Notes:

1. Induction motor starting on full voltage has effect of drawing 5x-10x
more current
    A. Can cause large voltage drop (needed for calculation)
    B. Two Problems
        i. Motor can not accelerate to full rated speed (Low bus voltage)
        ii. Voltage sag can cause lights to dim, drop out contactors, and
        shut down VFD. 

%} 

%% Lowest Voltage during start up Equation:
%{
V_Start = (X_LR) / (X_1 + X_t + X_LR) * V

V_Start: Lowest voltage (Given from Wattmeter)
X_LR: Locked Rotor Reactance of the Motor
X_1: Electric Utility Impedence (Can be useful during back calculations)
X_t: Transformer Leakage Reactance 
V: Input Voltage
%}

%% Motor Starting Current Equation:
%{
I_Start = (X_LR) / (X_1 + X_t + X_LR) * V

I_Start: Starting Current (Given from Wattmeter)
X_1: Electric Utility Impedence (Can be useful during back calculations)
X_t: Transformer Leakage Reactance 
V: Input Voltage
%}

%% Motor Starting Power Factor Calculation
%{
PF_Start = cos ( arctan( (X_1 + X_t + X_LR) / R_LR) )

PF_Start: Motor Locked/ Starting Power Factor (10%-30%)
R_LR: Resistive Locked rotor impedance
X_1: Utility impedance
X_t: Transformer Leakage reactance

If X_1 or X_t is not avaliable

PF_Start = cos ( arctan(X_LR / R_LR))
%}

%% Example Nameplate
% Input Data from Motor

% Known Values from Motor
Motor_HP = 2000; % kW
Motor_V = 4160; % V
Motor_RPM = 1785; % RPM
Motor_Phase = 3; % 3 Phase Motor
Motor_freq = 60; % Hz
Motor_SF = 1.15; % Service Factor
Motor_FLA = 247; % Full Load Amps
Motor_NEMA = (3.15+3.54)/2;


%% Equations Set up

Motor_Reactance = ((1000 * Motor_V)^2) / (2 * pi * Motor_freq * Motor_HP); %Xm
Motor_Power = Motor_V * Motor_FLA; % Watts
Motor_Power_kW = Motor_Power / 1000; %kW


    

% From Full Load Current find Power Factor
% Motor_FLA = (HP * 746) / (Voltage * sqrt(3) * Efficency * Power Factor *
% RPM)
% Rearrange and solve for Power Factor

Motor_SF_A = Motor_FLA * Motor_SF; % Service Factor Amps

Motor_LRA = Motor_SF_A*5;

I_Start = (Motor_NEMA * Motor_HP)/(sqrt(3)*Motor_V);








% Impedance of Motor Calculation
% Zm = Xm / (Power Factor)






%% References
%{
1. https://voltage-disturbance.com/power-engineering/voltage-sag-due-to-induction-motor-starting/
%}