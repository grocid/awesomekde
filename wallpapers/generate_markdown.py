base = """| | | |
|:-------------------------:|:-------------------------:|:-------------------------:|
|"""


SIZE = 500

from os import listdir
from os.path import isfile, join


with open("WALLPAPERS.md", "w+") as fo:
	fo.write(
		base + " | ".join("<img width=\"%d\" src=\"%s\">" % 
		(SIZE, f) for f in listdir(".") if isfile(join(f)))
	)


