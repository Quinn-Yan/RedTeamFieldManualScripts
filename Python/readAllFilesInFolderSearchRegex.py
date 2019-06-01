import glob,re
for msg in glob.glob('/tmp/*.txt'):
    filer = open((msg),'r')
    data = filer.read()
    message = re.findall(r'<message>(.*?)>/message', data, re.DOTALL)
    print "File %s contains %s" % (str(msg),message)
    filer.close()