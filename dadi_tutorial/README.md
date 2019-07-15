== Tutorial for dadi -- https://bitbucket.org/RyanGutenkunst/dadi ==

Dadi is a python module and allows to estimate population genetics model parameters using the site frequency spectrum. It allows to set up a partial derivate equation (PDE) and then solves this numerically and then allows to calculate the Maximum composite likelihood.

It has facilities to generate bootstrap samples (non-parameteric and parametric) to generate a likelihood ratio test.

Our tutorial will discuss the necessary parts of a python program that need to be written if you want to use this method successfully.

Concepts: - how to set up the model - how to get smae basic information about the data - how the optimize the model - how to bootstrap a model using ms - how to run a likelihood ratio test

Installation: follow Ryan's guide: I will use an editor to show the program and explain details, we will use 'ipython notebook' to run the code, and it also will be handy of you have the manual (a PDF https://bitbucket.org/RyanGutenkunst/dadi/src/2af5c247405f525dab5683ac7ddd14f0c56a8d25/doc/manual/manual.pdf?at=master open)

To install, and you have a compiler on your computer will be the easiest simply to git clone the directory:

git clone https://bitbucket.org/RyanGutenkunst/dadi.git

[if your computer does not have 'git' installed, you still can download the package, using this https://bitbucket.org/RyanGutenkunst/dadi/get/1.7.0.zip [if you read this tutorial later than September 2015 you may need to figure out whether there is a newer version available]

Once you have the folder on your system: - cd into the folder - read the readme - python setup.py install --user #if you are on a system that does not all root access - copy the tutorial from the class website onto your machine. - cd into the tutorial folder - We will discuss some population models and how to set them up. - I will discuss the program YRI_CEU.py in excruciantingly detail (and will extend this here, but time is fleeting) - Run the program
