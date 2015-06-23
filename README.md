# veraPDF-model-syntax

This project provides domain specific language support developed with xtext including spellchecking, word complete, syntax colouring and generating java interfaces from described model. VeraPDF syntax is used to describe VeraPDF pdf/a validation model (https://github.com/veraPDF/veraPDF-model).

To get veraPDF-model support in Eclipse :

1) Install xtext plugin in Eclipse. If you don't have Eclipse yet installed, it is recommended to get Eclipse distribution with already integrated xtext features from: https://eclipse.org/Xtext/download.html.

2) Now you need local copy of xtextmodel-syntax repo. It can be copied via "Download ZIP" button on project page or via git :

```
git clone https://github.com/veraPDF/xtextmodel-syntax
```

3) Copy plugins from xtextmodel-syntax/eclipse_plugins to {eclipse_directory}/plugins.

4) Restart Eclipse

5) Now your eclipse has support of {formal_syntax_name} with syntax checking and coloring, autocomplete and generating java interfaces from model classes (should have .mdl extension). 

To open veraPDF generic model follow these steps :

1) Make local copy of veraPDF-model repository via "Download ZIP" button on project page or via git :

```
git clone https://github.com/veraPDF/veraPDF-model
```

2) Launch eclipse and import model into eclipse workspace : File -> Import... -> General -> Existing Projects into Workspace.

3) Model classes are placed in src/main/java.
