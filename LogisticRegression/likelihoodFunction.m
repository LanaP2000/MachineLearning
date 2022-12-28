function [l, grad] = likelihoodFunction(beta, X, y)
%LIKELIHOODFUNCTION Computes log likelihood using beta as the parameter 
%   for logistic regression and the gradient of the log likelihood function
%   w.r.t. to the parameters.

% You need to return the following variables correctly 
l = 0; 
grad = zeros(size(beta)); 

% ====================== YOUR CODE HERE =====================
% Instructions: Compute the log likelihood (l) of a particular choice of beta.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the log likelihood function w.r.t. each 
%               parameter in beta
%
% Note: grad should have the same dimensions as beta
%

N = height (X);

for i = 1 : N
    pii = 1 ./ (1 + exp((-1) * (X(i, :) * beta)));
    l = l + (log(pii) * y(i) + log(1 - pii) * (1 - y(i)));
    grad = grad + (y(i) - pii) * X(i, :)';
end

% =============================================================

end
