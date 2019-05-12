
Homework
--------

Homework assignments are listed by due date.
Assignments may change up to 1 week before the due date.
**Do not print this out!** Changes and edits will be continuous.

You are expected to use modern computational tools of your choice. Keep in mind that you should ensure they will be available via exams (on your laptop or in the lab). *You should use modern computational tools* to solve problems (but be prepared to code them yourself as the course moves along).

Sept. 15:

Use the toolboxes (see syllabus) to check your answers, not to obtain them.


- 1: 1 - 7 (1, 2, 3, 4, 5, 6, 7)
- 1: 12

Follow these instructions in order. *You may complete the process on one machine, then complete on the other machine at a separate pace*.

- `Install Python <https://github.com/vibrationtoolbox/vibration_toolbox/blob/master/docs/Installing_Python.rst>`_ on your laptop and your unix account in the lab.
- `Install Matlab <https://www.wright.edu/information-technology/services/matlab-software>`_ on your laptop (already on the Linux machines).
- Get a `GitHub Account <http://www.github.com>`_
- Install `GitHub Desktop <https://desktop.github.com>`_ on your personal computer
- `Install the Vibration Toolbox for Matlab <http://vibrationtoolbox.github.io/vibration_toolbox/>`_ on both computers.
- `Install the Vibration Toolbox for Python <http://vibrationtoolbox.github.io/vibration_toolbox/>`_ on both computers.
- `Install the Vibration Testing Toolbox for Matlab <https://github.com/Vibration-Testing/Vibration-Testing-Matlab>`_ on both computers.
- `Install the Vibration Testing Toolbox for Python  <https://github.com/Vibration-Testing/vibrationtesting/blob/master/CONTRIBUTING.rst>`_ on both computers.


Sept. 22:

- 1: 9, 15, 19, 22, 25
- Make one minor and *valid* correction to the Matlab version of the Vibration Toolbox and submit the pull request on GitHub. You will know it's valid when I accept your pull request (one person has already completed this).

Sept. 29:

Oct. 5:

Oct. 12:

- 2:1, 3, 5, 7, 8
- Demonstrate equation 2.95 through use of Monte Carlo simulations in the programming environment of your choice.
- Show that the phase angle between two sinusoids represented by :math:`x` and :math:`y` is given by :math:`\phi=\text{acos}(\rho_{xy})`.



Oct. 19:




Oct. 26:

Nov. 2:

Nov. 9:

Nov. 16:

- In any modeling we inevitably neglect modes at higher
  frequencies. For :math:`\omega=1` rad/s, determine the percent error in
  the calculated response magnitude of :math:`x_{1}` if the contribution of
  the second mode is neglected.

:math:`\begin{bmatrix}
3&0\\0&5
\end{bmatrix}
\vector{\ddot{x}}
+
\begin{bmatrix}
.2 &-.1\\-.1&.2
\end{bmatrix}
\dot{\vector{x}}+
\begin{bmatrix}
2 &-1\\-1&2
\end{bmatrix}
\vector{x}=
\begin{bmatrix}
1\\0
\end{bmatrix}
\sin(\omega t)`


- At a particular frequency, your intern tells you that :math:`S_{xx}=1`, :math:`S_{ff}=1.7`, and
  :math:`S_{fx}=0.95459-0.94549 j`.  Should you accept these results? Hint: Calculate :math:`H_1, H_2, H_v`, and
  :math:`\gamma_{xf}^2`.

- Consider the following experimental condition: excitation sensor
  noise. How does it effect the following: FRF resonance amplitude
  FRF anti-resonance, apparent damping? *Do they effect actual values, or measured values?* **No more than 3 sentences for each explanation**.

- Consider :math:`x` having a Gaussian distribution with :math:`\mu= 15` and  :math:`\sigma=4`. Use computational tools to determine the PDF of :math:`y` if

:math:`y=
\begin{cases}
x&x\le 15\\
13.5+0.1 x&15<x
\end{cases}`

- 3: 1, 4, 5, 6

Nov. 23:
Just kidding

Nov. 30:

Dec. 7:

Dec. 15:
