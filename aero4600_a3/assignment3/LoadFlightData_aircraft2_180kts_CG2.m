%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                                                          %
% Aircraft data and aerodynamic derivatives  - CG 39.4% MAC               %
%                                                                          %
% Flight config = clean_xx - flaps deflected 0 deg, clean configuration at %
% 180 knots                                                                 %
% Tyrell Chandra, 02/05/2012                                               %
% Updated 04/05/2012                                                       %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [FD] = LoadFlightData2012_Comet_180kts_300ft_CG2()

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
    FD.Aero.CLa  =  6.001513;
    FD.Aero.CLq  =  9.221698;
    FD.Aero.CLad = -1.5042;
    FD.Aero.CLde =  0.723291;
    FD.Aero.CLo  = 0.08803;
    
    % Aerodynamic Data (Reference CG: 39.4 % mac)
    FD.Aero.alpha_o = -FD.Aero.CLo/FD.Aero.CLa; 
    
    % Drag Coefficients
    FD.Aero.Cdo    =  0.02037;
    FD.Aero.k      =  0.05;
    
    % M Moment Coefficients
    FD.Aero.Cmo  =  -0.00734;
    FD.Aero.Cma  = -0.402142;
    FD.Aero.Cmq  = -11.258486;
    FD.Aero.Cmad =  3.0462;
    FD.Aero.Cmde = -1.879165;
    
    % Side Force Coefficients
    FD.Aero.Cyb  = -0.309162;
    FD.Aero.Cybd =  0.1022;
    FD.Aero.Cyp  =  -0.024842;
    FD.Aero.Cyr  =  0.280615;
    FD.Aero.Cyda =  0.009813;
    FD.Aero.Cydr =  0.271769;
      
    % N Moment Coefficients
    FD.Aero.Cnb  =  0.119937;
    FD.Aero.Cnbd = -0.0334;
    FD.Aero.Cnp  = 0.009396;
    FD.Aero.Cnr  = -0.118018;
    FD.Aero.Cnda = -0.002308;
    FD.Aero.Cndr = -0.124055;
    
    % L Moment Coefficients
    FD.Aero.Clb  = -0.032855;
    FD.Aero.Clbd =  0.0114;
    FD.Aero.Clp  = -0.53706;
    FD.Aero.Clr  =  0.055632;
    FD.Aero.Clda = -0.234614; 
    FD.Aero.Cldr =  0.0339;
    
    FD.Aero.CDdf = 0;
    FD.Aero.CLdf = 0;
    FD.Aero.Cmdf = 0;

end      