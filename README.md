# Crabs
% rotate captain
R = getRotation(thetaCapt);
captRotated = R*capt;
% shift captain to new location
T = getTranslation(xCapt,yCapt);
capt = T*captRotated;
get Rotation rotates the captain
