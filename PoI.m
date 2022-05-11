function [PoI] = PoI(MoS)
%-- PoI computes the Probability of Instability (PoI) statistic from a given 
%-- Margin of Stability (MoS) time series
%-- 
%-- The Margin of Stability (MoS) is an instantaneous measure of dynamic
%-- stability (Hof et al., 2005): https://doi.org/10.1016/j.jbiomech.2004.03.025
%--
%-- Assuming that the MoS time series is normally distributed, PoI uses erf() to
%-- integrate the probability density function over the region where MoS<0
%--
%-- PoI is reported as a percentage and is interpreted as the percent likelihood
%-- that any given MoS value will be unstable (in the region MoS<0) 
%-- (i.e. fails to meet Hof's 'Condition for dynamic stability')
%--
%-- Note that PoI reflects the likelihood of becoming unstable relative to
%-- a SINGLE BoS boundary
%--
%-- Inputs include: 
%--      - MoS: Margin of Stability time series (Nx1) (in meters)
%--             for N data points (likely steps)
%--
%-- Outputs include: 
%--      - PoI: Probability of Instability statistic (in %)
%-- 
%-- Helpful resources: 
%-- - https://en.wikipedia.org/wiki/68%E2%80%9395%E2%80%9399.7_rule
%-- - https://www.youtube.com/watch?v=26QbWYBCw7Y
%--
%-- First written by Meghan E. Kazanski 1 August 2021
%-- Last edited by Meghan E. Kazanski 12 October 2021
%--------------------------------------------------------------------------
%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%  MoS Time Series Mean & SD   %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%--
    MeanMoS = mean(MoS);
    SdMoS = std(MoS); 
    
%% %%%%%%%%%%%%%%%%%%%%%%%%
%  Error Function (erf)   %
%%%%%%%%%%%%%%%%%%%%%%%%%%%
%-- 
    ErrorFun = erf((MeanMoS/SdMoS)/sqrt(2)); 
    
%% %%%%%%%%%%%%%%%%%%%%%%%%
%  Probability of MoS<0   %
%%%%%%%%%%%%%%%%%%%%%%%%%%%    
%-- 
%-- Integrating the area beneath the probability density function of the MoS time series 
%-- over the region where MoS<0
    ProbOut = 0.5*(1-ErrorFun);   %-- Probability MoS<0
    
    PoI = ProbOut*100;   %-- As percentage (%)
                    
end

