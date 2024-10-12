%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                                                          %
% Aircraft data and aerodynamic derivatives  - CG 41.04% MAC               %
%                                                                          %
% Flight config = clean_xx - flaps deflected 0 deg, clean configuration at %
% 180 knots                                                                 %
% Tyrell Chandra, 02/05/2012                                               %
% Updated 03/05/2012                                                       %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [FD] = LoadFlightData2012_Comet_180kts_300ft_CG1()

% Inertial Data
FD.I.g = 9.81;           % Gravity Constant
FD.I.m = 722;            % Aircraft Mass               (kg)
FD.I.Ixx = 691.88;       % Aircraft Moments of Inertia (kg.m^2)
FD.I.Iyy = 868.150;      % Aircraft Moments of Inertia (kg.m^2)
FD.I.Izz = 1254.87;      % Aircraft Moments of Inertia (kg.m^2)
FD.I.Ixz = 0;            % Aircraft Moments of Inertia (kg.m^2)

% Geometric Data
    FD.Geo.S = 9.6;         % Platform Area (m^2)
    FD.Geo.c = 1.3634;      % Chord Length  (m)
    FD.Geo.b = 8.5;         % Wing Span     (m)
    
    % Propeller Data
    FD.Prop.P_max = 300*746; % Maximum engine power (Watts)
    FD.Prop.eta = 0.85;      % Propeller efficiency
    
    % Control Data
    DtoR = pi/180;
    
    FD.CntrlLimit.Lower = [0;            % Throttle range (Fraction)
                                      -25*DtoR;     % Elevator range (rad)
                                      -25*DtoR;     % Aileron range  (rad)
                                      -25*DtoR];    % Rudder range   (rad)
    FD.CntrlLimit.Upper = [1;            % Throttle range (Fraction)
                                      25*DtoR;      % Elevator range (rad)
                                      25*DtoR;      % Aileron range  (rad)
                                      25*DtoR];     % Rudder range   (rad)

    % Lift Coefficients
    FD.Aero.CLa  =  6.001513;
    FD.Aero.CLq  =  9.023952;
    FD.Aero.CLad = -1.502739381;
    FD.Aero.CLde =  0.723291;
    FD.Aero.CLo  = 0.08803;
    
    % Aerodynamic Data (Reference CG: 41.04 % mac)
    FD.Aero.alpha_o = -FD.Aero.CLo/FD.Aero.CLa; 
    
    % Drag Coefficients
    FD.Aero.Cdo    =  0.02037;
    FD.Aero.k      =  0.05;
    
    % M Moment Coefficients
    FD.Aero.Cmo  =  -0.00589;
    FD.Aero.Cma  = -0.303269;
    FD.Aero.Cmq  = -11.096581;
    FD.Aero.Cmad =  3.0433;
    FD.Aero.Cmde = -1.867249;
    
    % Side Force Coefficients
    FD.Aero.Cyb  = -0.309162;
    FD.Aero.Cybd =  0.1022;
    FD.Aero.Cyp  =  -0.024842;
    FD.Aero.Cyr  =  0.279086;
    FD.Aero.Cyda =  0.009813;
    FD.Aero.Cydr =  0.2717669;
      
    % N Moment Coefficients
    FD.Aero.Cnb  =  0.119173;
    FD.Aero.Cnbd = -0.0331;
    FD.Aero.Cnp  = 0.009331;
    FD.Aero.Cnr  = -0.116647;
    FD.Aero.Cnda = -0.002282;
    FD.Aero.Cndr = -0.123337;
    
    % L Moment Coefficients
    FD.Aero.Clb  = -0.032855;
    FD.Aero.Clbd =  0.0091;
    FD.Aero.Clp  = -0.53706;
    FD.Aero.Clr  =  0.055458;
    FD.Aero.Clda = -0.234614; 
    FD.Aero.Cldr =  0.0339;
    
    FD.Aero.CDdf = 0;
    FD.Aero.CLdf = 0;
    FD.Aero.Cmdf = 0;

end      