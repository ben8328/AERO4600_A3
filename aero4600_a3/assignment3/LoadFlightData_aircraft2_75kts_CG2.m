%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                                                          %
% Aircraft data and aerodynamic derivatives  - CG 39.4% MAC               %
%                                                                          %
% Flight config = clean_xx - flaps deflected 0 deg, clean configuration at %
% 75 knots                                                                 %
% Tyrell Chandra, 02/05/2012                                               %
% Updated 04/05/2012                                                       %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [FD] = LoadFlightData2012_Comet_75kts_300ft_CG2()

% Inertial Data
FD.I.g = 9.81;           % Gravity Constant
FD.I.m = 722;            % Aircraft Mass               (kg)
FD.I.Ixx = 690.4613;       % Aircraft Moments of Inertia (kg.m^2)
FD.I.Iyy = 828.4319;      % Aircraft Moments of Inertia (kg.m^2)
FD.I.Izz = 1216.657;      % Aircraft Moments of Inertia (kg.m^2)
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
    FD.Aero.CLa  =  5.885863;
    FD.Aero.CLq  =  9.074018;
    FD.Aero.CLad = -1.4591;
    FD.Aero.CLde =  0.713128;
    FD.Aero.CLo  = 0.08611;
    
    % Aerodynamic Data (Reference CG: 41.04 % mac)
    FD.Aero.alpha_o = -FD.Aero.CLo/FD.Aero.CLa; 
    
    % Drag Coefficients
    FD.Aero.Cdo    =  0.02036;
    FD.Aero.k      =  0.05;
    
    % M Moment Coefficients
    FD.Aero.Cmo  =  -0.00705;
    FD.Aero.Cma  = -0.418621;
    FD.Aero.Cmq  = -11.118499;
    FD.Aero.Cmad =  2.9975;
    FD.Aero.Cmde = -1.848547;
    
    % Side Force Coefficients
    FD.Aero.Cyb  = -0.306803;
    FD.Aero.Cybd =  0.1014;
    FD.Aero.Cyp  =  -0.025437;
    FD.Aero.Cyr  =  0.278252;
    FD.Aero.Cyda =  0.009483;
    FD.Aero.Cydr =  0.268719;
      
    % N Moment Coefficients
    FD.Aero.Cnb  =  0.119018;
    FD.Aero.Cnbd = -0.0331;
    FD.Aero.Cnp  = 0.009551;
    FD.Aero.Cnr  = -0.117055;
    FD.Aero.Cnda = -0.002246;
    FD.Aero.Cndr = -0.12258;
    
    % L Moment Coefficients
    FD.Aero.Clb  = -0.032603;
    FD.Aero.Clbd =  0.0091;
    FD.Aero.Clp  = -0.529706;
    FD.Aero.Clr  =  0.054919;
    FD.Aero.Clda = -0.230797; 
    FD.Aero.Cldr =  0.0335;
    
    FD.Aero.CDdf = 0;
    FD.Aero.CLdf = 0;
    FD.Aero.Cmdf = 0;

end      