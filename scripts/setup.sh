#!/bin/bash

conda config --add channels conda-forge
conda config --add channels defaults

conda install bioconda::phylobayes-mpi