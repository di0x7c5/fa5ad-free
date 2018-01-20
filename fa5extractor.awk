#!/usr/bin/awk -f

#
# Copyright (C) 2018 by Dariusz Iwanoczko
# Github: https://github.com/diwanoczko
#

BEGIN {
	file_string_xml = "values/fa-strings.xml"
	print "<resources>" > file_string_xml;
}

{
	fa_icon_prefix = "fa";
	
	if (FILENAME ~ /fa-brands\.js/) {
		fa_icon_prefix = "fab";
	} else if (FILENAME ~ /fa-regular\.js/) {
		fa_icon_prefix = "far";
	} else if (FILENAME~ /fa-solid\.js/) {
		fa_icon_prefix = "fas";
	}
	
	if ($0 ~ /^.*\".*\": \[[0-9]*, [0-9]*, \[\], \"f.*\", \".*\"\].*$/) {
		fa_icon_name = gensub(/^  \"(.*)\": \[([0-9]*), ([0-9]*), \[\], \"(f.*)\", \"([Mm].*)\"\].*$/, "\\1", "g", $0);                        #"
		fa_icon_viewport_width = gensub(/^  \"(.*)\": \[([0-9]*), ([0-9]*), \[\], \"(f.*)\", \"([Mm].*)\"\].*$/, "\\2", "g", $0);              #"
		fa_icon_viewport_height = gensub(/^  \"(.*)\": \[([0-9]*), ([0-9]*), \[\], \"(f.*)\", \"([Mm].*)\"\].*$/, "\\3", "g", $0);             #"
		fa_icon_value = gensub(/^  \"(.*)\": \[([0-9]*), ([0-9]*), \[\], \"(f.*)\", \"([Mm].*)\"\].*$/, "\\4", "g", $0);                       #"
		fa_icon_svg_path = gensub(/^  \"(.*)\": \[([0-9]*), ([0-9]*), \[\], \"(f.*)\", \"([Mm].*)\"\].*$/, "\\5", "g", $0);                    #"
		
		# Prepare String resource
		gsub("-", "_", fa_icon_name);
		fa_icon_name = fa_icon_prefix "_" fa_icon_name;
		fa_icon_value = "&#x" fa_icon_value ";";
		fa_string = "\t<string name=\"" fa_icon_name "\">" fa_icon_value "</string>";
		
		# Append new generated String to string.xml resource file
		print fa_string > file_string_xml;
		
		# Calculate size of icon
		svg_width_dp = (fa_icon_viewport_width/512) * 24;
		svg_height_dp = (fa_icon_viewport_height/512) * 24;
		
		# Construct resource
		xml = "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n";
		xml = xml "<vector xmlns:android=\"http://schemas.android.com/apk/res/android\"\n";
		xml = xml "\tandroid:width=\"" svg_width_dp "dp\"\n";
		xml = xml "\tandroid:height=\"" svg_height_dp "dp\"\n";
		xml = xml "\tandroid:viewportWidth=\"" fa_icon_viewport_width "\"\n";
		xml = xml "\tandroid:viewportHeight=\"" fa_icon_viewport_height "\">\n";
		xml = xml "\t<path\n";
		xml = xml "\t\tandroid:fillColor=\"#FF000000\"\n";
		xml = xml "\t\tandroid:pathData=\"" fa_icon_svg_path "\"\n";
		xml = xml "\t/>\n";
		xml = xml "</vector>";
		
		# Generate xml resource
		file_drawable_xml = "drawable/ic_" fa_icon_name ".xml";
		print xml > file_drawable_xml;
	}
}

END {
	print "</resources>" > file_string_xml;
}
