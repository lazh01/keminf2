How to Compile:
===============
- Terminal Room: 

cmake .

- In the Virtual Machine you will have to do

cmake . -DBOOST_ROOT=/home/waldgetier/programs -DCMAKE_PREFIX_PATH=/home/waldgetier/programs

- Then:
make 

How to Run:
===========
After compilation you should be able to run an executable:

./doStuff (make sure the out folder exists, you can use ./wrapper.sh)

or you can use the library created to use the python code:

mod -f ./test.py


Notes About the Content
=======================

- ``main.cpp`` contains the actual extension
- The extension defines a ``main`` function as default
  and can thus be used as a stand-alone program.
- If ``AS_PYTHON_EXTENSION`` is defined, then the file contains
  code using Boost.Python to make it a Python extension.
- The CMake project file takes care of creating both variants of the above.
- To try out the stand-alone program, run one of the following:
  - ``./doStuff``
  - ``./wrapper.sh`` (which takes care of ``out/``
    and calling ``mod_post``)
- To try the extension as a Python extension, use the MØD wrapper
  script, and run ``mod -f test.py``
