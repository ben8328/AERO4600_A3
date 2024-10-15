%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% Function to perform simple Euler integration of state equations
% for generic flight dynamic model
%
% (c) Peter W. Gibbens & S. Dumble, 1 March, 2011.
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function  X_out = aero4600_euler(DT, X, Xg, U, FlightData)

% Obtain state derivatives using nonliner model (Assume Xdot = 0)
[ForceCoeff, MomentCoeff] = aero4600_aero(X, Xg, zeros(12,1), U, FlightData);
Xdot  = aero4600_motion(X, ForceCoeff, MomentCoeff, FlightData);

% Obtain state derivatives using nonliner model (Iterate Once so that Xdot Converges)
[ForceCoeff, MomentCoeff] = aero4600_aero(X, Xg, Xdot, U, FlightData);
Xdot  = aero4600_motion(X, ForceCoeff, MomentCoeff, FlightData);

% Hint: for linear simulation, Xdot = A*X + B*U

% Integrate states
X_out = X + Xdot*DT;

end

