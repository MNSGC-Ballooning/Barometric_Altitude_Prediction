function altitudePrediction(p,a)

% input pressure values must be in units of psi. converted to hPa in the function to compute altitude function

np = length(p); % Need length to compute a predicted altitude for each pressure data point
p_hPa = p.*68.9467; % Converting pressure from psi to hPa. Comment out if you input in hPa.

plot(a,p_hPa); hold on;
Pdenom = 8.72559797;         % Original: 5.2559797;
denom = -4.26755856e-6;      % Original: -6.8755856e-6;
sp_hPa = 1013.25;           % Original: 1013.25;

for i=1:np
    alt(i) = (10^((log10(p_hPa(i)/sp_hPa))/Pdenom)-1)/denom; 
    % function found on https://www.brisbanehotairballooning.com.au/pressure-and-altitude-conversion/
end

plot(alt, p_hPa); % plots the predicted altitude vs p_hpa
hold off;
end