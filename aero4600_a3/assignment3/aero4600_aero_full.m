function Xdot = aero4600_aero_full(X,Xg,U,FD)

Xdot = zeros(12,1);
for i=1:100
    XdotOld = Xdot;
    [ForceCoeff,MomentCoeff] = aero4600_aero(X,Xg,Xdot,U,FD);
    [Xdot]= aero4600_motion(X,ForceCoeff,MomentCoeff,FD);

    if norm(XdotOld-Xdot) < sqrt(eps)
        break;
    end
end
