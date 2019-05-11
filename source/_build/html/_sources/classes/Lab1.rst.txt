.. _project-1:

Project 1
...................

#. Write a finite element submodule

   #. Write a general element code to generate the elemental stiffness
      and mass matrices for a single three-dimensional
      rod/torsion-rod/beam linearly tapered element for WFEM.

   #. Write an additional routine that returns the coordinate
      transformation matrix.

   #. Obtain the FE matrices (:math:`M` and :math:`K`) in global
      coordinates.

   #. Write a subroutine to assemble these elements into the global
      matrix.

#. Check your code by comparing the results of your code to that of
   ANSYS for a sufficiently complex problem. Be sure to do at least one
   mesh convergence study in addition to the following bench marks (See
   3 below).

   #. Static simple and complex (complicated)

   #. Dynamic theoretical: compare to closed-form dynamic mode shapes
      and natural frequencies

   #. Prove that choice of coordinate does not change your answers
      through rotating your problem a partial angle (less than 90
      degrees in all three directions.).

   #. As least one dynamic case unique to your group validated against
      ANSYS.

#. Reports should show tables comparing continuum theory/ANSYS/ your
   code results for numerous validation cases. Dynamic cases must also
   show convergence to continuum theory when the mesh is refined for
   both rod, torsion rod, and beam cases. The more validation that is
   performed, the higher your work will be regarded. Put code and
   transcripts in an appendix.

#. All reports and codes and input files must be zipped and emailed to
   me in a single package.


