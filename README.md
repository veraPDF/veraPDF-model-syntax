veraPDF-model-syntax
====================

This project provides domain specific language support for the [veraPDF PDF/A and PDF/UA validation model](https://github.com/veraPDF/veraPDF-model). The DSL is developed with Xtext including spell checking, word completion, syntax colouring and generation of Java interfaces from the model.

CI Status
---------

[![Build Status](https://jenkins.openpreservation.org/job/veraPDF/job/1.24rc/job/model-syntax/badge/icon)](https://jenkins.openpreservation.org/job/veraPDF/job/1.24rc/job/model-syntax/ "OPF Jenkins")
[![Maven Central](https://img.shields.io/maven-central/v/org.verapdf/org.verapdf.svg)](https://repo1.maven.org/maven2/org/verapdf/org.verapdf/ "Maven central")
[![Codacy Badge](https://app.codacy.com/project/badge/Grade/a03dbd92b1724cd0a7636ea0245adc16)](https://app.codacy.com/gh/veraPDF/veraPDF-model-syntax/dashboard?utm_source=gh&utm_medium=referral&utm_content=&utm_campaign=Badge_grade "Codacy coverage")

[![GitHub issues](https://img.shields.io/github/issues/veraPDF/veraPDF-library.svg)](https://github.com/veraPDF/veraPDF-library/issues "Open issues on GitHub")
[![GitHub issues](https://img.shields.io/github/issues-closed/veraPDF/veraPDF-library.svg)](https://github.com/veraPDF/veraPDF-library/issues?q=is%3Aissue+is%3Aclosed "Closed issues on GitHub")
[![GitHub issues](https://img.shields.io/github/issues-pr/veraPDF/veraPDF-model-syntax.svg)](https://github.com/veraPDF/veraPDF-model-syntax/pulls "Open pull requests on GitHub")
[![GitHub issues](https://img.shields.io/github/issues-pr-closed/veraPDF/veraPDF-model-syntax.svg)](https://github.com/veraPDF/veraPDF-model-syntax/pulls?q=is%3Apr+is%3Aclosed "Closed pull requests on GitHub")

Pre-requisites
--------------

In order to make use of the DSL support you'll require

 * Java 9 - 17, which can be downloaded [from Oracle](https://www.oracle.com/technetwork/java/javase/downloads/index.html), or for Linux users [OpenJDK](https://openjdk.java.net/install/index.html).
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
