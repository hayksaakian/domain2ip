/*** Some information about the LESS compiling process:

## Bootstrap core is in-tact and nothing has been touched at the core, we suggest you keep it this way for updates.  Code bloat isn't an issue as long as you are combining stylesheets, minifying and using compression on the server.
	- EXCEPTION: the base 'sprites.less' inside of bootstrap has been commented out and is not compiled in order for 'font-awesome.less' 
				 to function correctly.
				 
## The bootstrap core (minus responiveness) is compiled directly and readily available in the /css directory as bootstrap.css
## The bootstrap responsive.less file is compiled directly and available in the /css directory as responsive.css
## The custom theme is comprised of multiple LESS files and is compiled (indirectly) into theme-name.less
## The core.less file is the main file that is compiled directly into the core.css stylesheet:
	- /bootstrap/bootstrap.less
	- /bootstrap/responsive.less
	- /theme-name/theme-name.less
	|
	|------------> All compiled and minified into core.min.css and referenced in the <head> of the document, no need to change if you don't want to.  Feel free to use the un-minifed version that has been placed in the CSS folder for your convenience, or reference bootstrap.css, bootstrap-responsive.css and core.css individually if you so desire.
	
## There is a variables.less file located at /less/theme-name/variables.less that overrides the bootstrap core variables document