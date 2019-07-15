# installing dadi on hoffman: 
# https://support.idre.ucla.edu/helpdesk/KB/View/11345064-python-environments-on-hoffman
qrsh 
module load python/2.7.13_shared
virtualenv $HOME/env_python2.7.13
source $HOME/env_python2.7.13/bin/activate
pip install numpy
pip install scipy
cd /u/home/a/ab08028/bin
git clone https://bitbucket.org/gutenkunstlab/dadi
cd dadi 
# build dadi 1.6.3
python setup.py install # installs it just in this virutalenv
# YOU MUST LEAVE THE DADI DIRECTORY TO IMPORT DADI! <-- OTHERWISE YOU GET THE TRIDIAG ERROR
cd ../
# go into python and try import dadi (works)
# also need matplotlib
deactivate
# *** IT WORKS!!! ** You need to put the following uncommented lines at the top of your dadi wrapper script:
# source /u/local/Modules/default/init/modules.sh
# module load python/2.7.13_shared
# source /u/home/c/cegamori/env_python2.7.13/bin/activate # activate virtual environment for dadi



#Chris:
#You bet! As a heads up, one issue I ran into is that the newest scipy version (1.3 I think) removed some functions that dadi needs to install, so make sure to install the next most recent version of scipy