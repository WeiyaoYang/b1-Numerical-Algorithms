Part A: Numerical Differentiation Under Noise
This project investigates the numerical differentiation of a noisy sinusoidal signal using three finite-difference schemes — forward, backward, and central differences — and analyzes their accuracy as the step size h varies.
The script will:
Generate a noisy sine signal with additive Gaussian noise
Compute derivatives using forward, backward, and central schemes
Evaluate mean square errors against the analytical derivative
Plot log–log error curves for all methods

Part B: Polynomial Regression & Conditioning
This part extends Part A by applying polynomial least-squares fitting to noisy sinusoidal data.
The aim is to study how model complexity (degree m) affects both the accuracy of fit and the numerical conditioning of the problem.
The program performs the following steps:
1. Generate noisy data: Create a synthetic signal with additive Gaussian noise.
2. Polynomial fitting: Perform least-squares polynomial regression for polynomial degrees n = 1:10
3. Condition number analysis: Compute and plot the condition number as a function of the polynomial degree to evaluate numerical stability.
4. Derivative accuracy evaluation:
Differentiate the fitted polynomials using polyder, apply the chain rule if scaling is used, and compute the L₂ error of the estimated derivative relative to the analytical derivative.
5. Plot "Condition Number vs Polynomial Degree" and "Derivative L₂ Error vs Polynomial Degree"

Part C: ODE Prediction (Euler vs RK4)
This part solves the simple harmonic oscillator equation using numerical integration methods.
The goal is to compare the accuracy and stability of the first-order Euler method and the fourth-order Runge–Kutta (RK4) method for different step sizes.
The program performs the following steps:
1. Convert 𝑦′′+𝜔2𝑦=0 into a first-order system 𝑦′=𝑣, 𝑣′=−𝜔2𝑦.
2. Set initial conditions y(0)=sin(ϕ), v(0)=ωcos(ϕ).
3. Integrate using Euler and RK4 methods for each step size h=[0.2,0.1,0.05,0.025,0.0125].
4. Compare numerical solutions with the analytical solution 
y(t)=sin(ωt+ϕ) using the maximum error (norm L∞).
5. Create a Global Error vs Step Size log–log plot.