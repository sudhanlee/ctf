#!/usr/bin/env python3

x = "Looking for the answer? At first, only seeing the small paragraph of text, can raise questions in your mind. Following steps and certain procedures gets, if done properly, you discover meaning to this.".split(" ")


flag = "flag{"

for i in range(0,len(x),4):
	tmp = x[i]
	if x[i][-1].isalpha():
		flag += x[i]+" "
	else:
		flag += x[i][:-1]+" "
print(flag[:-1]+"}")


#flag{Looking At the text in steps gets you this}
