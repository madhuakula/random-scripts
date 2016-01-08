import requests
# Sample script for getting reports from hackerone, Change the loop range as your need.  Change the URL and use for any of the URL fuzzing.
# Author : Madhu Akula - (http://www.madhuakula.com)

f = open('hackeroneurls.txt', 'w')

for x in range(0,150):
	reurl = "https://hackerone.com/reports/" + str(x)
	try:
	    r = requests.head(reurl)
	    print str(reurl) + " :: " + str(r.status_code)
	    if (r.status_code == 200):
	    	f.write(reurl+'\n')

	except requests.ConnectionError:
	    print "failed to connect";
f.close()
