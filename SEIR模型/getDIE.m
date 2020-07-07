function [fitresult, gof] = getDIE(pat, pat_die)
%CREATEFIT(PAT,PAT_DIE)
%  Create a fit.
%
%  Data for 'untitled fit 1' fit:
%      X Input : pat
%      Y Output: pat_die
%  Output:
%      fitresult : a fit object representing the fit.
%      gof : structure with goodness-of fit info.
%
%  另请参阅 FIT, CFIT, SFIT.

%  由 MATLAB 于 17-Feb-2020 20:33:33 自动生成


%% Fit: 'untitled fit 1'.
[xData, yData] = prepareCurveData( pat, pat_die );

% Set up fittype and options.
ft = fittype( 'poly1' );

% Fit model to data.
[fitresult, gof] = fit( xData, yData, ft );

% Plot fit with data.
%figure( 'Name', 'untitled fit 1' );
%h = plot( fitresult, xData, yData );
%legend( h, 'pat_die vs. pat', 'untitled fit 1', 'Location', 'NorthEast' );
% Label axes
%xlabel pat
%ylabel pat_die
%grid on


