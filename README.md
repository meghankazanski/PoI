# PoI
%-- PoI is a MATLAB function that computes the Probability of Instability (PoI) statistic <br>
%-- from a given Margin of Stability (MoS) time series <br>
%-- <br>
%-- The Margin of Stability (MoS) is an instantaneous measure of dynamic <br>
%-- stability (Hof et al., 2005): https://doi.org/10.1016/j.jbiomech.2004.03.025 <br>
%-- <br>
%-- Assuming that the MoS time series is normally distributed, PoI uses erf() to <br>
%-- integrate the probability density function over the region where MoS<0 <br>
%-- <br>
%-- PoI is reported as a percentage and is interpreted as the percent likelihood <br>
%-- that any given MoS value will be unstable (in the region MoS<0) <br>
%-- (i.e. fails to meet Hof's 'Condition for dynamic stability') <br>
%-- <br>
%-- Note that PoI reflects the likelihood of becoming unstable relative to <br>
%-- a SINGLE BoS boundary <br>
%-- <br>
%-- Inputs include: <br>
%--      - MoS: Margin of Stability time series (Nx1) (in meters) <br>
%--             for N data points (likely steps) <br>
%-- <br>
%-- Outputs include:  <br>
%--      - PoI: Probability of Instability statistic (in %) <br>
%-- <br>
%-- Included is a 'MoS_Samp.mat' that can be loaded into the MATLAB workspace <br>
%-- containing an 230x1 sample time series (230 steps) of mediolateral MoS values <br>
%-- from a young, healthy subject during normal treadmill walking <br>
%-- The returned PoI = 0.48% is interpreted as, for that subject/ trial, any given step <br>
%-- has a 0.48% likelihood of being laterally unstable (MoS<0) <br>
%-- <br>
%-- Helpful resources: <br>
%-- - https://en.wikipedia.org/wiki/68%E2%80%9395%E2%80%9399.7_rule <br>
%-- - https://www.youtube.com/watch?v=26QbWYBCw7Y <br>
%-- <br>
%-- First written by Meghan E. Kazanski 1 August 2021 <br>
%-- Last edited by Meghan E. Kazanski 12 October 2021 <br>
