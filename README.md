# Font Awesome 5 Android Drawable Icons

TODO

# Script
All drawable and string.xml resources are generated automatically by using AWK script.
If You want to use it by Yourself, You have to launch it with *.js file containing icon array with SVG data.

1. Download Free Font Awesome 5 pack from: https://fontawesome.com/
2. Unpack the packages.
3. Open fodler fontawesome-free-5.0.4/svg-with-js/js and copy *.js icon set (not .min.js) which You are interested in
 - fa-brands.js, containing brands icon set only
 - fa-regular.js, containing regular icon set only
 - fa-solid.js, containing solid icon set only
 - fontawesome-all.js, containing all icons
4. Copy the .js files to script folder
5. Be sure that both AWK and bash script are executable:
	chmod a+x fa5extractor.*
6. Open terminal in scripts folder and run script (for example with fa-regular.js):
	fa5extractor.sh fa-regular.js
7. Script will generate two folders: drawable and values whitch are ready to use in Your Android application.

# License
Following the Font Awesome philosophy, this project is free to use.
You can use it for commercial projects, open source projects or any way You would like to.

All brand icons are trademarks of their respective owners.
Please do not use brand logos for any purpose except to represent the company, product, or service to which they refer.