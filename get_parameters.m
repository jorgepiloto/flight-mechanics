function p = get_parameters
% This function returns the dimensionless parameters

    m_d = 1;
    R = 0.5;
    k = 0.1;
    U = 12;
    rho = 1;
    a_w = 4;
    S = 5e-3;
    
    x_p = 0.06944;
    
    Omega = sqrt((2 * k) / (m_d * R^2));
    delta = (rho * S * U^2 * x_p * a_w) / (2 * k);

    p = [Omega, delta];
end
