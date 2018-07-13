%close all;

%% Full Pupil diameter calculation and demonstration scrip
% variables entered here feed through the first function
ageYrs = 30;
fieldDiameterDeg = 60;
eyeNumber = 2;
x = 10.^(-4:0.01:4);
%% first plot
% run the function generated in 'pupilequation2'
for t = 1:length(x)
    pupilDiameterMm1(t) = wy_getPupilSize(ageYrs, x(t), fieldDiameterDeg, eyeNumber, 'Unified');
    pupilDiameterMm2(t) = wy_getPupilSize(ageYrs, x(t), fieldDiameterDeg, eyeNumber, 'Holladay');
    pupilDiameterMm3(t) = wy_getPupilSize(ageYrs, x(t), fieldDiameterDeg, eyeNumber, 'Crawford');
    pupilDiameterMm4(t) = wy_getPupilSize(ageYrs, x(t), fieldDiameterDeg, eyeNumber, 'MoonSpencer');
    pupilDiameterMm5(t) = wy_getPupilSize(ageYrs, x(t), fieldDiameterDeg, eyeNumber, 'DeGrootGebhard');
    pupilDiameterMm6(t) = wy_getPupilSize(ageYrs, x(t), fieldDiameterDeg, eyeNumber, 'StanleyDavies');
    pupilDiameterMm7(t) = wy_getPupilSize(ageYrs, x(t), fieldDiameterDeg, eyeNumber, 'Barten');
    pupilDiameterMm8(t) = wy_getPupilSize(ageYrs, x(t), fieldDiameterDeg, eyeNumber, 'BlackieHowland');
    pupilDiameterMm9(t) = wy_getPupilSize(ageYrs, x(t), fieldDiameterDeg, eyeNumber, 'Winn');
end
%plot(log10(x), PupilDiameter) for each model's results
figure
subplot(1,2,1);
semilogx(x, pupilDiameterMm1, 'k--', 'LineWidth',2.5);hold on
semilogx(x, pupilDiameterMm2, 'color',[202 202 202]/255, 'LineWidth',1.5); 
semilogx(x, pupilDiameterMm3, 'b', 'LineWidth',1.5); 
semilogx(x, pupilDiameterMm4, 'm', 'LineWidth',1.5); 
semilogx(x, pupilDiameterMm5, 'r', 'LineWidth',1.5); 
semilogx(x, pupilDiameterMm6, '--', 'color',[179 138 99]/255, 'LineWidth',1.5); 
semilogx(x, pupilDiameterMm7, '--', 'color',[163 70 161]/255, 'LineWidth',1.5); 
semilogx(x, pupilDiameterMm8, 'color',[254 188 120]/255, 'LineWidth',1.5); 
semilogx(x, pupilDiameterMm9, '--', 'color',[126 162 134]/255, 'LineWidth',1.5); 
xlabel('Luminance (cd{\cdot}m^{-2})');
ylabel('Diameter (mm)');
ylabel('Diameter (mm)');
ylim([2,8.15]);
legend('Unified', 'Holladay', 'Crawford', 'MoonSpencer', 'DeGrootGebhard', 'StanleyDavies', 'Barten', 'BlackieHowland', 'Winn', 'location', 'SouthWest');
legend BOXOFF;
pbaspect([3,2,1])
set(gca, 'TickDir', 'out');
box off;
grid on;
title({['Observer age: ' num2str(ageYrs) ' yrs'] ; ['Field diameter: ' num2str(fieldDiameterDeg) ' deg']});

%% second plot
ageYrs = 30;
fieldDiameterDeg = 10;
eyeNumber = 1;
for t = 1:length(x)
    pupilDiameterMm1(t) = wy_getPupilSize(ageYrs, x(t), fieldDiameterDeg, eyeNumber, 'Unified'); 
    pupilDiameterMm2(t) = wy_getPupilSize(ageYrs, x(t), fieldDiameterDeg, eyeNumber, 'Holladay');
    pupilDiameterMm3(t) = wy_getPupilSize(ageYrs, x(t), fieldDiameterDeg, eyeNumber, 'Crawford');
    pupilDiameterMm4(t) = wy_getPupilSize(ageYrs, x(t), fieldDiameterDeg, eyeNumber, 'MoonSpencer');
    pupilDiameterMm5(t) = wy_getPupilSize(ageYrs, x(t), fieldDiameterDeg, eyeNumber, 'DeGrootGebhard');
    pupilDiameterMm6(t) = wy_getPupilSize(ageYrs, x(t), fieldDiameterDeg, eyeNumber, 'StanleyDavies');
    pupilDiameterMm7(t) = wy_getPupilSize(ageYrs, x(t), fieldDiameterDeg, eyeNumber, 'Barten');
    pupilDiameterMm8(t) = wy_getPupilSize(ageYrs, x(t), fieldDiameterDeg, eyeNumber, 'BlackieHowland');
    pupilDiameterMm9(t) = wy_getPupilSize(ageYrs, x(t), fieldDiameterDeg, eyeNumber, 'Winn');
end
%plot(log10(x), PupilDiameter) for each model's results
subplot(1,2,2);
semilogx(x, pupilDiameterMm1, 'k--', 'LineWidth',2.5);hold on
semilogx(x, pupilDiameterMm2, 'color',[202 202 202]/255, 'LineWidth',1.5); 
semilogx(x, pupilDiameterMm3, 'b', 'LineWidth',1.5); 
semilogx(x, pupilDiameterMm4, 'm', 'LineWidth',1.5); 
semilogx(x, pupilDiameterMm5, 'r', 'LineWidth',1.5); 
semilogx(x, pupilDiameterMm6, '--', 'color',[179 138 99]/255, 'LineWidth',1.5); 
semilogx(x, pupilDiameterMm7, '--', 'color',[163 70 161]/255, 'LineWidth',1.5); 
semilogx(x, pupilDiameterMm8, 'color',[254 188 120]/255, 'LineWidth',1.5); 
semilogx(x, pupilDiameterMm9, '--', 'color',[126 162 134]/255, 'LineWidth',1.5); 
xlabel('Luminance (cd{\cdot}m^{-2})')
ylabel('Diameter (mm)')
ylabel('Diameter (mm)')
ylim([2,8.15])
legend('Unified', 'Holladay', 'Crawford', 'MoonSpencer', 'DeGrootGebhard', 'StanleyDavies', 'Barten', 'BlackieHowland', 'Winn', 'location', 'SouthWest')
legend BOXOFF
pbaspect([3,2,1])
set(gca, 'TickDir', 'out');
box off;
grid on;
title({['Observer age: ' num2str(ageYrs) ' yrs'] ; ['Field diameter: ' num2str(fieldDiameterDeg) ' deg']});

set(gcf, 'PaperPosition', [0 0 35 15]);
set(gcf, 'PaperSize', [35 15]);
saveas(gcf, 'wy_allModels.pdf')
saveas(gcf, 'wy_allModels.png')