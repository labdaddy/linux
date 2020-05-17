#### WGET is super cool. Use it to download music, backup a website, easily deal with flaky connections and even cook yourself chicken parm.
I did not create this content. It was copied directly from lifehacker.com All rights reserved by lifehacker.com:
##### Mirror an entire web site
Say you want to backup your blog or create a local copy of an entire directory of a web site for archiving or reading later. The command: `wget -m http://ginatrapani.googlepages.com` will save the two pages that exist on the ginatrapani.googlepages.com site in a folder named just that on your computer. The -m in the command stands for "mirror this site."

Say you want to retrieve all the pages in a site PLUS the pages that site links to. You'd go with: `wget -H -r --level=1 -k -p http://ginatrapani.googlepages.com` this command says, "Download all the pages (-r, recursive) on http://ginatrapani.googlepages.com plus one level (—level=1) into any other sites it links to (-H, span hosts), and convert the links in the downloaded version to point to the other sites' downloaded version (-k). Oh yeah, and get all the components like images that make up each page (-p)."

Warning: Beware, those with small hard drives! This type of command will download a LOT of data from sites that link out a lot (like blogs)! Don't try to backup the Internet, because you'll run out of disk space!

##### Resume large file downloads on a flaky connection
Say you're piggybacking the neighbor's wifi and every time someone microwaves popcorn you lose the connection, and your video download (naughty you!) keeps crapping out halfway through. Direct Wget to resume partial downloads for big files on intermittent connections.
To set Wget to resume an interrupted download of this 16MB "Mavericks Surf Highlights 2006: Wipeouts" short from Google Video, use: `wget -c --output-document=mavericks.avi "http://vp.video.google.com/videodownload?version=0&secureurl=qgAAAJCWpcRd5eI2k3sm3LWJZMjLyLFiTxk_KqUrRYbrzLTEw8hwMV30m3MRz6rYMTxGqWIfWMQjNJsP0fNXUMc34jzoPcy6z-qHde5UVD29Po6_9b_-d3J5AQpVROUPRqzkJriangEl2IMkKBJd08Q7TTJIAC_r6XID-fNYPLKHm1KRvx0smOslivNLGmyZsCsZmVNVN0jaw5-dloWtzPlI86zIubh1XvJsTg2u_YaHcaAB&sigh=-BbV2h_bIFVuVg4D-h6MUTxuErM&begin=0&len=139433&docid=6059494448346363884"`

(Apologies for the humungous, non-wrapping URL.)

The -c ("continue") option sets Wget to resume a partial download if the transfer is interrupted. You'll also notice the URL is in quotes, necessary for any address with &'s in it. Also, since that URL is so long, you can specify the name of the output file explicitly - in this case, mavericks.avi.
