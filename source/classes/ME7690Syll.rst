Description
===========

This course covers advanced theoretical and practical aspects of
vibration testing including: signal analysis, windowing, transducers,
exciters, modal identification techniques, rotor dynamics, and health
monitoring.

Instructors
===========

| `Joseph C. Slater, PhD, PE <http://www.cs.wright.edu/~jslater>`_
| 209 Russ Center
| 937-775-5040

| Helpful materials are available through the `course page <http://cecs.wright.edu/~jslater/classes/ME7690Syll.html>`_


Prerequisites
=============

ME 4210/6210: Engineering Vibration or equivalent

Time and Location
=================

Tuesday/Thursday 11:00-12:20, 141 Russ Engineering Center

Lecture:
--------

The course is Lecture/Lab. Lab is at
your own pace, but some lectures will actually be introductions to the
Vibration Lab (010 Russ). Lecture time will be shortened accordingly to
accommodate the extra time spent in the lab.

It will be relatively fast-paced (I hear). You are expected to meet one-on-one
with the instructor throughout the semester as much of the class is run
as an individually scheduled lab.

Lab:
----

139 Russ. Open hours (unless scheduled for other use). One lecture early in the semester will be in the lab. After that, you will use the lab equipment at times of your convenience in order to complete assignments but their due dates. You are expected to be proactive in asking for equipment, as well as read manuals as necessary to enhance your skills.

141. Russ Open hours (unless scheduled for other use). This is the same room that class will be held in.

Texts
=====

Required
--------

*Vibration Testing, with Modal Analysis and Health Monitoring,*
J. C. Slater.

Will be provided as a PDF during class.


Supplementary
-------------
*Engineering Vibration,* D. J. Inman.

*Theoretical and Experimental Modal Analysis,* N. M. M. Maia and
J. M. M. e Silva, 1998.

*Turbomachinery Rotordynamics: phenomena, modeling, and analysis,*
D. Childs, 1993.

*Mechanical Vibrations,* J. P. Den Hartog

*Modal Testing: Theory and Practice,* D. J. Ewins.

*Vibration for Engineers,* A. Dimarogonas.

*Vibration Testing,* K. G. McConnell.

*Random Data Analysis and Measurement Procedures, 3rd edition,* J. S.
Bendat and A. G. Piersol, 2000.

*Random Vibrations: Theory and Practice,* P. H. Wirsching, T. L. Paez,
and K. Ortiz, 1995.

*An Introduction to Random Vibrations, Spectral & Wavelet Analysis, 3rd
edition,* D. E. Newland, 1993.

Software
========

A wide variety of scripts in `Matlab`_ and `Python`_ will be used in this course. It is necessary that you at least have `Matlab`_ installed, and highly recommended that you install `Python`_. You will also learn how to use `GitHub <github.com>`_  (`why to use git <https://www.youtube.com/watch?v=w3jLJU7DT5E>`_) to do collaborative software development. Get and account as early as possible and learn how to fork

1. Get an account on `GitHub <github.com>`_. Think of this as a Facebook for professional coding. This may become valuable for you as a resume to future employers.
2. Install `GitHub Desktop <https://desktop.github.com>`_
3. Read through all of the `Guides <https://help.github.com/desktop-beta/guides/>`_. You will not remember everything. That is OK. You will learn some of it and it will help you later.
4. Work with the `Spoon-Knife <https://github.com/octocat/Spoon-Knife>`_ example.

Please see a `Glossary <https://help.github.com/articles/github-glossary/>`_ of some of these terms.

I think you should (but it's not necessary for the course):

1. Get the free `Student Developer Pack <https://education.github.com/pack/join>`_
2. For command line knowledge (once you understand the GUI) `Introduction to command line git <https://www.youtube.com/watch?v=73I5dRucCds>`_. I plan on watching this carefully. It's full of good knowledge.

`Matlab`_
---------

`Matlab`_ is available at no direct charge to students. It is already installed on the lab computers. Please also install the following on both your lab accounts and on your personal computers.

`Matlab`_ packages that will be used are:

1. `The Engineering Vibration Toolbox`_: Install the `Matlab`_ version.
2. The `Vibration Testing Toolbox for Matlab`_. This version is working, but is not being developed with advanced capabilities. So, codes in this package work well, but are limited.

`Python`_
---------

`Python`_ is an open-source and free language that is currently ranked the second most sought after language by companies (`Matlab`_ is barely in any rankings). It is faster than `Matlab`_, much more widely developed (because everyone can contribute to it, and more broadly applicable (Youtube and Dropbox are in large parts Python code). You need to install it via the link and instructions.

Two `Python`_ packages will be used. They include more advanced features and are being actively developed. It is recommended that you install them via the developer method. This will allow you to:

a. Contribute fixes and code (for credit)
b. Easily receive updates during the term.

To do this, create an account on `GitHub <github.com>`_. Install the `GitHub Desktop Application`_, then follow the instructions for installing as a developer:

1. `Installing the Engineering Vibration Toolbox for Python <https://github.com/vibrationtoolbox/vibration_toolbox/blob/master/CONTRIBUTING.rst>`_ (See *contributing code*)

2. `Installing the Vibration Testing Toolbox for Python <https://github.com/Vibration-Testing/vibrationtesting/blob/master/CONTRIBUTING.rst>`_ (See *contributing code*)

For a tutorial on how to work with forks, please see the `Spoon-Knife <https://github.com/octocat/Spoon-Knife>`_ tutorial repository. It is well worth your time.

Topics
======

#. Review of introductory vibration theory.

#. State-space analysis.

#. Introduction to probability theory.

#. Signal processing: Correlation, Fourier Analysis, Spectral Density,
   Cross Spectral Density, Frequency Response Functions (:math:`H_{1}`,
   :math:`H_{2}`, and :math:`H_{v}`, MIMO).

#. Digital signal processing: discrete Fourier Transforms.

#. Data windowing and the effects on identified parameters.

#. Transducers: characteristics, calibration and selection.

#. Exciters: Hydraulic, electric, reaction-mass, rotating unbalance,
   hammers.

#. Basic identification techniques - errors induced.

#. Modal Identification: Polyreference and Eigensystem Realization
   Algorithm Techniques.

#. Model correction techniques.

#. Rotor Dynamics: De Laval rotor, whirl, precession, damping
   (hysteretic and viscous), gyroscopic effects, bearing instabilities.

#. Health monitoring: Signal processing techniques, Campbell Diagram,
   Cepstrum Analysis, Gating, Fault Diagnosis.

Homework (10%)
==============

Homework problems will be assigned at the end of lectures. *Any statement in the book such as “it can be shown”, “left as a homework problem”… is to be treated as a homework assignment when the material is covered in class. All problems at the end of the chapter should be done as well.* Homework problem solutions are collected every Thursday. You will be given no less than one week to do them. If there is a test scheduled on a day homework is due, the homework will be collected the following Wednesday. Each homework problem’s worth will be scaled by difficulty, based on the number of students who complete the problem. Standard scale is 1 point. If only one person solves the problem, the problem will be scaled to 5 points.

Students are encouraged to generate their own homework problems, turning the problem in to the instructor, along with the solution. [#foot]_ These will also be assigned to the class. One additional bonus point will be assigned provided the solution is also provided. Students may submit up to five problems per week, provided that they are unique from others submitted (just changing the numbers does not make the problem unique). *Students may not copy problems out of another text* for the bonus points, but may propose them as a challenge to the class provided that they announce the source of the problem. *The instructor reserves the right to assign or not assign any particular problem based on its merits relative to the course material*.

Your final homework score is your average total score divided by the total number of possible points. You are encouraged to work together in small groups, but keep in mind that homework is assigned in order to help you learn and keep up with the course material. Also note that you are strongly rewarded for distinguishing yourself. Please see me if you need help with the homework. This class is a cooperative effort between you and me. Homework scores will be curved to a nominal 3.5 average or better.

Exams (50%)
===========

There will be one midterm and a final exam graded on a curve, with the
average nominally being 3.5 on a 4 point scale. Minimum scale is
:math:`\geq 90 = A,\geq 80 = B, \geq 70 = C, \geq 60 = D, < 59 = F`. The
final exam will count for two test grades. The lowest exam grade of the
three will be dropped. An 8.5 in. by 11 in. formula sheet may be used
provided there are no derivations, definitions or solved problems on the
sheet. Tests will be graded and returned as soon as possible. Solutions
will be discussed during the lecture following the exam if time permits.
All grading discrepancies must be brought up in writing no later than
one week after the exam is returned. A simple note describing your
contentions will do.

Labs (40%)
==========

Labs involve additional research outside of the classroom, as well as
some programming for data analysis. Students should consult the books on
reserve at the library in addition to their own texts. In addition, it
is expected that students will need to consult me before, during, and
after performance of the labs.

Students will work in pairs on the standard labs.

Alternate labs may be proposed by students. Students who have specific
research needs should take advantage of this opportunity to tune their
learning to their specific needs. Examples are identification of noise
floor, PDFs, and sources in lab experiments, identification of sensor
capabilities, etc. Depending on the depth of the proposed experiment, it
may be substituted for more than one below.

At least five of the following labs must be performed and documented to
an adequate level to receive a :math:`B` grade. Students must perform
`Lab 1`_, at least one of `Lab 2`_, `Lab 3`_ or `Lab 4`_, plus two
rotor-dynamics labs. Labs are open-ended learning experiences. Grading
will reflect documented understanding gained in the lab. All data
generated in the labs must be a) plotted and described in the report, b)
turned in to me in ``.mat`` or ASCII format (preferred) format. Report must
be hard-copy. The report with the raw data must be zipped, tar-zipped,
stuffed, or what ever compression format you choose, into a single
archive and emailed to me. Lab grades will be curved to an nominal
average of 90% or better.

.. _Lab 1:

#. Lab 1: Introduction to lab equipment, hammers, load cells… Use of
   hammer to obtain time and frequency data. Experimentation with
   windowing. Identification using ERA (EzERA on the MathWorks web site,
   by Dr. Richard Cobb) and FRF (``mdofcf.m`` or similar from instructor) curve fit, half-power peak picking, and Nyquist circle fit to identify natural frequencies and damping ratios for the first 5 modes.

.. _Lab 2:

#. Lab 2: Sine sweep experiment and random excitation experiment, repeat
   identification methods of Lab 1. Comparison of results to those of
   Lab 1.

.. _Lab 3:

#. Lab 3: Repeat first two labs. Use different FRF techniques (see text)
   in order to estimate noise levels in each test.

.. _Lab 4:

#. Lab 4: Modal analysis using ERA and Polyreference.

#. Lab 5: Modal analysis of an object, correcting for mass loading of
   cables/accelerometers using perturbation methods.

#. Lab 6: Estimation of rotating unbalance. One plane balancing.

#. Lab 7: Estimation of sensitivity to misalignment.

#. Lab 8: Identification of bad bearings (choose your bad type based on
   available cases).

#. Lab 9: Identification of number of bad teeth in gear.

Important Dates
===============

+----------------+---------------------------+
| September 28:  | Exam I                    |
+----------------+---------------------------+
| November 7:    | Exam II                   |
+----------------+---------------------------+
| December 14:   | Final Exam, 10:15-12:15   |
+----------------+---------------------------+

.. rubric:: Footnotes

.. [#foot] If interested, the students can have their problems and solutions published in the final text, along with an acknowledgement.

.. _Matlab: https://www.wright.edu/information-technology/services/matlab-software
.. _The Engineering Vibration Toolbox: http://vibrationtoolbox.github.io
.. _Python: https://github.com/vibrationtoolbox/vibration_toolbox/blob/master/docs/Installing_Python.rst
.. _GitHub Desktop Application: https://desktop.github.com/
.. _`Vibration Testing Toolbox for Matlab`: https://github.com/Vibration-Testing/Vibration-Testing-Matlab
