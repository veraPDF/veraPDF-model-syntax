veraPDF-model-syntax
====================

This project provides domain specific language support for the [veraPDF PDF/A validation model](https://github.com/veraPDF/veraPDF-model). The DSL is developed with Xtext including spell checking, word completion, syntax colouring and generation of Java interfaces from the model.

[![Build Status](https://travis-ci.org/veraPDF/veraPDF-model-syntax.svg?branch=integration)](https://travis-ci.org/veraPDF/veraPDF-model-syntax "Travis-CI")
[![Build Status](http://jenkins.openpreservation.org/buildStatus/icon?job=veraPDF-model-syntax)](http://jenkins.openpreservation.org/job/veraPDF-model-syntax/ "Jenkins")
[![Maven Central](https://img.shields.io/maven-central/v/org.verapdf/parent.svg)](http://repo1.maven.org/maven2/org/verapdf/parent/ "Maven central")

Pre-requisites
--------------

In order to make use of the DSL support you'll require

 * Java 7, which can be downloaded [from Oracle](http://www.oracle.com/technetwork/java/javase/downloads/index.html), or for Linux users [OpenJDK](http://openjdk.java.net/install/index.html).
 * Apache Maven, used to build the project, which can be downladed [from the Apache Foundation](https://maven.apache.org/).
 * The [Eclipse IDE](https://eclipse.org/) with the [Xtext plug-in](https://eclipse.org/Xtext/download.html). If you haven't installed Eclipse then we recommend downloading the [Xtext Eclipse distribution](https://eclipse.org/Xtext/download.html).

Installation of DSL Support in Eclipse
--------------------------------------
To get veraPDF-model support in Eclipse :

 1. Download the veraPDF-model-syntax repository, either cloning via Git
 `git clone https://github.com/veraPDF/veraPDF-model-syntax` or downloading the [latest zip archive from GitHub](https://github.com/veraPDF/veraPDF-model-syntax/archive/master.zip).
 2. Change directory to the project build root `cd veraPDF-model-syntax//org.verapdf.releng`
 3. Build the project using Maven `mvn clean install -DskipTests`, tycho complains about missing tests otherwise.
 4. Copy the plugins from `veraPDF-model-syntax/eclipse_plugins` to `{eclipse_directory}/plugins`.
 5. Restart Eclipse.

Your Eclipse installation should now support {formal_syntax_name} with syntax checking and colouring, auto-completion, and generation of Java interfaces from the model classes (should have `.mdl` extension).

Importing the veraPDF Validation Model
--------------------------------------
To begin working with the veraPDF model:

 1. Download the veraPDF-model repository, either cloning via Git `git clone https://github.com/veraPDF/veraPDF-model` or downloading the [latest zip archive from GitHub](https://github.com/veraPDF/veraPDF-model/archive/master.zip).
 2. Launch Eclipse and import the model into your Eclipse workspace: File -> Import... -> General -> Existing Projects into Workspace.

The model classes are placed in `src/main/java`.
