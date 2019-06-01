import binascii, sys, string

dataFormatHex = binascii.a2b_hex(sys.argv[1])
output = ""
for char in dataFormatHex:
    if char in string.printable:
        output += char
    else:
        output += ""
    print "\n" + output