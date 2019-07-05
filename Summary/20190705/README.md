# 20190705

## Installing *dadi* and `easySFS` on Hoffman2.

1. Put this at the bottom of your `.bashrc`

You can edit `.bashrc` by typing

`cd` --> to get to your home directory
`nano .bashrc` --> opens up the nano text editor over `bashrc`.

`module load python/anaconda3`
`source activate your_env_name`.

At this point, exit from `Hoffman2` and re-login.

2. Create your own virual conda environment

Type this into command-line on `Hoffman2`.

`conda create -n your_env_name python=2.7 anaconda`.

If prompted, type `y` and hit enter (means yes).

3. Set up conda channels

Type this into command-line on `Hoffman2`.

`conda config --add channels conda-forge`

`conda config --add channels defaults`

`conda config --add channels r`

`conda config --add channels bioconda`

4. Install desired python packages **to your conda environment**.

`conda install -n your_env_name -c [channel] [package]`

For example:

`conda install -n your_env_name -c bioconda/label/cf201901 dadi`

`conda install -n your_env_name -c anaconda pandas`

`conda install -n your_env_name -c conda-forge matplotlib` Etc.

5. Clone a copy of `easySFS` from Github.

Type this into command-line on `Hoffman2`.

`git clone https://github.com/isaacovercast/easySFS.git`.

`cd easySFS`

`chmod 777 easySFS.py`

`./easySFS.py`

It should work now! You can run through [the examples.](https://github.com/isaacovercast/easySFS)
