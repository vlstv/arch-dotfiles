//Modify this file to change what commands output to your statusbar, and recompile using the make command.
static const Block blocks[] = {
	/*Icon*/	/*Command*/		             /*Update Interval*/	/*Update Signal*/
	{"",        "/home/vlstv/s/power.sh",    20,            		0},
	{"",        "/home/vlstv/s/updates.sh",  60,            	    0},
	{"",        "/home/vlstv/s/volume.sh",   0,            		    11},
	{"",        "/home/vlstv/s/time.sh",	 60,            		0},
};

//sets delimeter between status commands. NULL character ('\0') means no delimeter.
static char delim = ' ';
