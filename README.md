# Signals & Systems MATLAB Labs

MATLAB scripts for four lab tasks covering discrete-time signal manipulation, continuous-time LTI convolution, sampling/clipping, and numerical Fourier transforms.

## Tasks
- **Task 1 (`task1_discrete_signals/`):** Generates $g[n]$ (`code1a.m`), even/odd components (`code1b.m`, `code1c.m`), and time-scaled versions $g[2n]$ and $g[n/2]$ (`code1d.m`).
- **Task 2 (`task2_lti_convolution/task2.m`):** Builds continuous-time components, computes combined impulse responses and output $y(t)$ via numerical convolution, and plots the responses.
- **Task 3 (`task3_sampling_clipping/Task3.m`):** Reads the last three digits of a student ID to parameterize four signals, samples them at 50 Hz, applies amplitude clipping and magnitude (`abs`), and plots each stage.
- **Task 4 (`task4_fourier_transform/`):** Defines piecewise signals `x(t)`, `y(t)`, `w(t)`, and `z(t)` (`Task4_1.m`–`Task4_4.m`) and computes their numerical Fourier transforms over $\omega \in [-2\pi, 2\pi]$.

## Running
Open any script in MATLAB and run it directly (`Task3.m` will prompt for a Student ID in the Command Window).
