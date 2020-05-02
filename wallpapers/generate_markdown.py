base = """| | | |
|:-------------------------:|:-------------------------:|:-------------------------:|
|"""


SIZE = 500

from os import listdir
from os.path import isfile, join


with open("WALLPAPERS.md", "w+") as fo:
	fo.write(
		base + " | ".join("<img width=\"%d\" src=\"%s\">" % 
		(SIZE, f) + "| \n" * 1 * (i % 3 == 0) for i, f in enumerate(listdir(".")) if isfile(join(f)))
	)


