# Code

## Structure

This folder contains the code required to reproduce the results presented in
the paper as well as a file to setup a `conda` environment with all the
Python-3 libraries required. In particular, the following files may be found:

* `install_gds_stack.yml`: setup file to create a `conda` environment loaded
  with all the libraries needed (and a few more!). See instructions below to
  set it up on your own.
* `paper_figs.ipynb`: Jupyter notebook to reproduce figures and tables in the
  paper. Note it assumes the file is placed within the repository with the
  data files under the relative path `../data/`.

## Setup

We rely on Python 3 and a series of additional libraries for this
analysis. To create the environment, you may follow these instructions (mostly
taken from [here](http://darribas.org/gds16/software.html)).

The easiest way to install locally and natively the software stack required is to install a full scientific Python distribution. Although other good alternatives are also available (e.g. [Canopy](https://www.enthought.com/products/canopy/), [Sage](http://www.sagemath.org)), we recommend to install [Anaconda](https://store.continuum.io/cshop/anaconda/). Aim to install a **Python 3.5** version (although the environment will set it up otherwise for yourself). Please follow the instructions provided in the link for installation.

Once you have a fully working Anaconda distribution installed in your computer, you can setup an isolated environment that contains all the required libraries by running the install script provided with this guide. Exact instructions vary depending on the platform you are on. 

### macOS/Linux

Open up a terminal ("Applications --> Utilities --> Terminal" in macOS and  "ctr+alt+T" in Linux) and run the following commands:

* Navigate to the folder where this file is (e.g. Downloads):

    ```
    cd /path/to/folder/
    ```

* Execute the following command:

    ```
    conda-env create -f install_gds_stack.yml
    ```

* Once this has run, you should be able to activate the environment:

    ```
    source activate gds
    ```

### Windows

Open up the Anaconda Command Prompt (search for it on the Startup Menu) and run the following commands:

* Navigate to the folder where this file is (e.g. Downloads):

    ```
    cd /path/to/folder/
    ```

* Execute the following command:

    ```
    conda-env create -f install_gds_stack.yml
    ```

* Once this has run, you should be able to activate the environment:

    ```
    activate gds
    ```

## Check

To check things have installed correctly, an additional file is included, `check_gds_stack.ipynb`. To run the check, open a terminal (macOS/Linux) or the Anaconda Command Prompt (Windows), navigate to the folder as showed above and activate the environment:

* macOS/Linux:

    ```
    source activate gds
    ```

* Windows:

    ```
    activate gds
    ```

You should now see `(gds)` on the beginning of the line at the terminal/command prompt. You can now run the test as:

`jupyter nbconvert --execute check_gds_stack.ipynb`

This will run and, when finished, produce an HTML file in the same folder. Open it and check there are no errors reported. If that is the case, you are good to go!


