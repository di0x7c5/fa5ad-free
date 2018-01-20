# Android Drawable Icons
### base on Font Awesome 5 Free project (https://fontawesome.com/)

Font Awesome 5 Free is a collection of 907 free scalable vector icons easy to use, ceated and maintained by [Dave Gandy](https://github.com/davegandy).

Theese icons are very widley use on many of the websites and are great for prototyping the project mockups or scetchs.
There are some project in the web which are showing how to use Font Awesome set using the *.ttf font file but this
way have some disadventages: You have to attach ttf file as asset to Your project and everytime create Typeface object
and attach it to every TextView You want to use. Also You have to define proper string for the each icon. Preview in
design tab isn't generated properly so the icon is visible only after launching the application on the device. This
lead to regenerate XML layout many times before You reach the intended view.

Using vector drawables You are much flexible with using icon:
- Preview is properly generated in design tab, You can see the view in the way how It will be visible in working application,
- You can use drawable as background for any layout,
- You can stack several drawables so You are able to join several icons in one,
- You can easly apply icon color, also You can add gradient to it,
- You can use drawable together with Buttons, ImageButtons and TextView's.
- All icons are vectors so You can scale them easly withoput losing quality of an image.

And much more!

## How to use
Download the icon pack You want to use all pick the one containing bundle of all icons:
- [All](https://github.com/diwanoczko/fa5ad-free/raw/master/fa5ad-free-all.tar.gz)
- [Brands](https://github.com/diwanoczko/fa5ad-free/raw/master/fa5ad-free-brands.tar.gz)
- [Regular](https://github.com/diwanoczko/fa5ad-free/raw/master/fa5ad-free-regular.tar.gz)
- [Solid](https://github.com/diwanoczko/fa5ad-free/raw/master/fa5ad-free-solid.tar.gz)

Extract the archive. Inside You will get two folders:
- drawable, contains all drawable vector resources. Copy all folder or only specific icons to Your Android project and use them as normal drawable.
- values, contains the string resource xml file with code for specific icon. You can use this resource If You want to use *.ttf font file also.

After copy the resource files to Your Android project, You are ready to go!

## Script
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

## Changelog
 - v1.0.0 (Font Awesome Free Version 5.0.4)

## Author
- Twitter: http://twitter.com/diwanoczko
- Flickr: https://www.flickr.com/photos/diwanoczko
- Instagram: https://instagram.com/diwanoczko
- GitHub: https://github.com/diwanoczko
- Web Page: http://blackisthecolor.pl/
 
## License
No restrictions according to this project.
Following to Font Awesome 5 Free this project is also free to use.
You can use it for commercial projects, open source projects or any way You would like to.

Remember:
All brand icons are trademarks of their respective owners.
Please do not use brand logos for any purpose except to represent the company, product, or service to which they refer.
