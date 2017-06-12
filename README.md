# LaLaTeX

The LaLaTeX tool is a python based compiler script, that allows to create a documentation in PDF format from a source file written in a simple markup language. You will be able to create a documentation very fast and will need most of the time only a handful simple macros to get your documentation done.

Use the tool to create a document template, fill in your contents, compile et voila - a ready made PDF is created.

There are quite some features available - check out the Users Guide and example documents provided.
A pre-built Users Guide can be downloaded [here](https://www.dropbox.com/s/7qry47nmfsgpphs/LaLaTeX_Users_Guide-v0.6.0.pdf?dl=0).
Note, that you can build your own version later.

I will do more testing and provide hints&tips and example documents to explain more detailed features. The plan is, that you get all these documents here as tar files to play with them on your own and learn.

Please let me know about any issues and feedback you have and I will be glad to help.

Have fun!


## Fast and quick start
Not yet completed, but in short
* Copy leftlogo.png and lalatex into a directory of your choice
* Run lalatex --makedoc (-m) to create your Users Guide. Note, that most likely some packages will be missing (texlive-latex), so install what is missing
* Note: it might be somewhat tricky on some distros with the Latex packages and lalatex might hang. Check log files in this case and try to run pdflatex on the compiled .tex file to get more infos on what was going wron.
* If everything works fine, you get a Users Guide PDF - the code is "self contained" in the lalatex script


## Supported platforms
That's basically all, I'm working on more to fill the community with informations. Especially, the installation might be tricky, because many distros bring their different packaging for latex - I had quite some surprise with it. What I did test up to now:

*  RHEL Desktop
*  Fedora 23 Server
*  Fedora 23 and 25  Workstation
*  SLES 11
*  OpenSuse 13.1
*  Ubuntu 14.04 LTS workstation
*  Debian 8.2
*  RHEL7.1
