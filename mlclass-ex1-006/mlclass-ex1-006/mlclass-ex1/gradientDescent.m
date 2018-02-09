
function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);


for iter = 1:num_iters
    jd1 = 0;
    jd2=0;
    

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %
    
    for j= 1:m
        jd1 = jd1 + (theta(1) + theta(2)*X(j,2) - y(j));
        jd2 = jd2 + (theta(1) + theta(2)*X(j,2) - y(j))*X(j,2);
    end
    theta(1) = theta(1) - alpha*jd1/m;
    theta(2) =theta(2) - alpha*jd2/m;
end
            


    





    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);
    
end


