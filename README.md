# PoI
%-- PoI is a MATLAB function that computes the Probability of Instability (PoI) statistic 
%-- from a given Margin of Stability (MoS) time series
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
%-- Included is a 'MoS_Samp.mat' that can be loaded into the MATLAB workspace 
%-- containing an 230x1 sample time series (230 steps) of mediolateral MoS values 
%-- from a young, healthy subject during normal treadmill walking
%-- The returned PoI = 0.48% is interpreted as, for that subject/ trial, any given step
%-- has a 0.48% likelihood of being laterally unstable (MoS<0)
%--
%-- Helpful resources: 
%-- - https://en.wikipedia.org/wiki/68%E2%80%9395%E2%80%9399.7_rule
%-- - https://www.youtube.com/watch?v=26QbWYBCw7Y
%--
%-- First written by Meghan E. Kazanski 1 August 2021
%-- Last edited by Meghan E. Kazanski 12 October 2021
