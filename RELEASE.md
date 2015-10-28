Release Process
===============
Introduction
------------
###Audience
 - veraPDF development staff looking to release a new version;
 - anyone interested in knowing how our release process works; and
 - anyone who wants to change the version number or re-package our software.

###Pre-requisites
If you're still reading you'll also need an understanding and some experience using [Git](https://git-scm.com) and [Maven](https://maven.apache.org/). A quick brush up on [Semantic Versioning](http://semver.org/) and a typical [Git branching workflow](http://nvie.com/posts/a-successful-git-branching-model/) and we're ready to go.

Releasing
---------
The veraPDF software projects use the `MINOR` version number to indicate the development status of a particular version. An even number signifies a release version while an odd numbers are assigned to development prototypes. We increment the `MINOR` version number twice at each release milestone. The first increment is from the current odd numbered development version number to the new even release version.

You should use the latest version of the `integration` branch of the project. In the following example we'll start from scratch and assume:
 - we're releasing `0.6.x` from development version `0.5.x`
 - you're using a bash shell; and
 - the `git remote` name for the repo used is `origin`.

###Getting to integration
Clone the repo:

    git clone git@github.com:veraPDF/veraPDF-model-syntax.git
    cd veraPDF-model-syntax

If you already have the git repository cloned then from the repo sub-tree:

    git fetch origin

###Bump minor version
First we bump the `MINOR` version 
    git checkout -b integration origin/integration
