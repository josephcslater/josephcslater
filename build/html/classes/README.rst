Build process
================


This folder is constructed from two separate places. The first is in the *old* mirrored versino of my site. Everything html is stripped out. Files that should be seen as files are still there (old exams, etc.) so that these can be simply edited and ammended.

The html/web portion is built and by Sphinx.

The two both merge and put files in the directory. The first by executing jslatersync .

The second by executing Sphinx-site.fetchMirror

