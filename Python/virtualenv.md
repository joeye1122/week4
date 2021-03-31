# Managing Python modules

## What is a virtualenv?
Short for 'Virtual Environment', a virtualenv allows you to create an isolated working copy of Python. This enables you to add and modify Python modules without write access to the global installation.

## Load a python module and check that virtualenv is available
```
$ source /usr/local/module/spartan_old.sh
$ module load Python/3.7.1-GCC-6.2.0
$ which virtualenv
/usr/local/easybuild/software/Python/3.7.1-GCC-6.2.0/bin/virtualenv
$ virtualenv --version
16.4.3
```

Looks good, we have a `virtualenv` binary available to use.

## Setup your own virtualenv
Firstly, let's create a directory inside your home directory for your new isolated environment.
```
$ mkdir ~/virtualenv
```
Next, let's create the virtualenv.
```
$ virtualenv ~/virtualenv/python3.7.1
New python executable in virtualenv/python3.7.1/bin/python
Installing Setuptools................................done.
Installing Pip.......................................done.
```

To begin working with your project, you'll need to activate the virtual environment. This is done by using `source` on the `activate` script found inside your virtualenv.
```
$ source ~/virtualenv/python3.7.1/bin/activate
```
Your shell prompt (`$PS1`) will change to something like:
```
(python3.7.1)[USER@MACHINE]$ 
```

## Install a package in your virtualenv
If you look at the bin directory in your virtualenv, you'll see `easy_install` and `pip`. These versions have been modified to put eggs and packages in the virtualenv's site-packages directory.

In this example, we'll install and use a local copy of `flask`:
```
(python3.7.1)[USER@MACHINE]$ pip install flask
(python3.7.1)[USER@MACHINE]$ python
Python 3.7.1 (default, Apr  3 2019, 13:47:58) 
[GCC 6.2.0] on linux
Type "help", "copyright", "credits" or "license" for more information.
>>> import flask
```

You can use `pip` to install any python module you like at any version you like.

## Exit Your virtualenv
To exit your virtualenv use `deactivate`:
```
(python3.7.1)[USER@MACHINE]$ deactivate 
```

Your shell prompt will then return to normal.

## Reusing you virtual environment

Next time you want to use your virtualenv, just source its `activate` script:
```
$ source ~/virtualenv/python3.7.1/bin/activate
(python3.7.1)[USER@MACHINE]$ python
Python 3.7.1 (default, Apr  3 2019, 13:47:58) 
[GCC 6.2.0] on linux
Type "help", "copyright", "credits" or "license" for more information.
>>> import flask
```
