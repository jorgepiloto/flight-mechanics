function dpsi_dt = psi_function(t, psi, Omega, delta)
    % This is the linear system associated to the ODE function
    
    dpsi_dt = [psi(2); Omega * (delta * cos(psi(1)) - 1) * psi(1)];

end