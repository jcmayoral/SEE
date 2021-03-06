function [ pose ] = predict_pose( u,posep,dt )
vt = u(1);
omegat = u(2);
xp = posep(1);
yp = posep(2);
thetap = posep(3);

x = xp-vt/omegat*sin(thetap)+vt/omegat*sin(thetap+omegat*dt);
y = yp+vt/omegat*cos(thetap)-vt/omegat*cos(thetap+omegat*dt);
theta = thetap+omegat*dt;

pose = [x,y,theta];

end

