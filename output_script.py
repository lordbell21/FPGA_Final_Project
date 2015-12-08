f = open("uart.txt", 'r')
DATA_WIDTH = int(input("Enter in DATA_WIDTH"))
count = 0
while True:
	c = f.read(DATA_WIDTH)
	print(c)
	if not c:
		print("End of file")
		break
f.closed