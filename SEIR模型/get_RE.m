function [fitresult, gof] = get_RE(pat, pat_re)
%CREATEFIT(PAT,PAT_RE)
%  Create a fit.
%
%  Data for 'untitled fit 1' fit:
%      X Input : pat
%      Y Output: pat_re
%  Output:
%      fitresult : a fit object representing the fit.
%      gof : structure with goodness-of fit info.
%
%  另请参阅 FIT, CFIT, SFIT.

%  由 MATLAB 于 17-Feb-2020 20:27:15 自动生成


%% Fit: 'untitled fit 1'.
[xData, yData] = prepareCurveData( pat, pat_re );

% Set up fittype and options.
ft = fittype( 'poly1' );

% Fit model to data.
[fitresult, gof] = fit( xData, yData, ft );

% Plot fit with data.
%figure( 'Name', 'untitled fit 1' );
%h = plot( fitresult, xData, yData );
%legend( h, 'pat_re vs. pat', 'untitled fit 1', 'Location', 'NorthEast' );
% Label axes
%xlabel pat
%ylabel pat_re
%grid on


