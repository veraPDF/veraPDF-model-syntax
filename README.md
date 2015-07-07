veraPDF-model-syntax
====================

This project provides domain specific language support for the [veraPDF PDF/A validation model](https://github.com/veraPDF/veraPDF-model). The DSL is developed with Xtext including spell checking, word completion, syntax colouring and generation of Java interfaces from the model.

CI Status
---------

Travis: [![Build Status](https://travis-ci.org/veraPDF/veraPDF-model-syntax.svg?branch=integration)](https://travis-ci.org/veraPDF/veraPDF-model-syntax)

Jenkins: [![Build Status](http://jenkins.opf-labs.org/view/veraPDF-jobs/job/veraPDF-model-syntax/badge/icon)](http://jenkins.opf-labs.org/view/veraPDF-jobs/job/veraPDF-model-syntax/)

Pre-requisites
--------------

In order to make use of the DSL support you'll require

 * Java 7, which can be downloaded [from Oracle](http://www.oracle.com/technetwork/java/javase/downloads/index.html), or for Linux users [OpenJDK](http://openjdk.java.net/install/index.html).
 * The [Eclipse IDE](https://eclipse.org/) with the [Xtext plug-in](https://eclipse.org/Xtext/download.html). If you haven't installed Eclipse then we recommend downloading the [Xtext Eclipse distribution](https://eclipse.org/Xtext/download.html).

Installation of DSL Support in Eclipse
--------------------------------------

To get veraPDF-model support in Eclipse :

 1. Download the veraPDF-model-syntax repository, either cloning via Git
 `git clone https://github.com/veraPDF/veraPDF-model-syntax` or downloading the [latest zip archive from GitHub](https://github.com/veraPDF/veraPDF-model-syntax/archive/master.zip).

 2. Copy the plugins from `veraPDF-model-syntax/eclipse_plugins` to `{eclipse_directory}/plugins`.

 3. Restart Eclipse.

Your Eclipse installation should now support {formal_syntax_name} with syntax checking and colouring, auto-completion, and generation of Java interfaces from the model classes (should have `.mdl` extension).

Importing the veraPDF Validation Model
--------------------------------------

To begin working with the veraPDF model:

 1. Download the veraPDF-model repository, either cloning via Git `git clone https://github.com/veraPDF/veraPDF-model` or downloading the [latest zip archive from GitHub](https://github.com/veraPDF/veraPDF-model/archive/master.zip).

 2. Launch Eclipse and import the model into your Eclipse workspace: File -> Import... -> General -> Existing Projects into Workspace.

The model classes are placed in `src/main/java`.
