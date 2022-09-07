# Forensics

## 1. Zip Up Prep Up

#### Given files:

* flag.zip

#### Solution:

* Unzip the **flag.zip**.
* You'll find a lot of files but only one file will be hidden properly. To see the file type `ls -la` in your shell.
* File name is `.hidden` . Open the file to see the **flag**.

#### command:

```bash

unzip flag.zip
cd flags
cat .hidden

```
#### Flag:

`flag{h0wt0unz1pan43xtracta_7ile}`

---

## 2. Pretty Sunset

#### Given files:

* PrettySunset.jpg

#### Solution:

* This challenge can be solved by adjusting the brightness of **PrettySunset.jpg**.
* You'll see the flag after increasing the brightness of image.
	##### Before increasing Brightness:
	![PrettySunset](Pretty_Sunset_COMPLETE/PrettySunset.jpg)
	##### After increasing Brightness:
	![PrettySunset](Pretty_Sunset_COMPLETE/PrettySunset_edited.jpg)

#### Flag:

`flag{Hidden_l1ke_a_pro}`

---

## 3. Skipping To Lengths...

* This challenge don't have any downloadable files.
* A senario was given and you need to figure out the flag using that senario.

#### Senario:

**Question** : Late last night, I got an email titled, "Skipping To Lengths…", I couldn’t find out what they were trying to tell me, can you? \
**Email** : "Looking for the answer? At first, only seeing the small paragraph of text, can raise questions in your mind. Following steps and certain procedures gets, if done properly, you discover meaning to this."

#### Solution:

* **Hint** : "3"
* If you try to relate the given **Hint** and the title **Skipping To Lengths...**, we can guess that skipping 3 words in the given **Email** may help to figure out the flag.
* Like 1st word was **Looking** and the 2nd word would be **At** and so on.
* It is very easy to figure the string, you can do it mannualy, but I automated it with python.
* My python script was uploaded [here](Skipping_To_Lengths.../attempt.py)
* The final string looks like "**Looking At the text in steps gets you this**".

#### Flag:

`flag{Looking At the text in steps gets you this}`

---

## 4. PN System 16

#### Given files:

* colorFulllmage.png

#### Solution:

* If you see the image, it has 8 different color.
* Every color have HEX value and RGB values, using these values we can easily identify the color.For example: **RED** have HEX value of **FF0000**.
* Likewise these 8 colors have some HEX values. I used [imagecolorpicker.com](https://imagecolorpicker.com/) to find the HEX values.
* After finding all the HEX values, I combined all the values I got and that combined form is a hex encoded string.
##### HEX values:
	* #666c61
	* #677b68
	* #33785f
	* #316e5f
	* #696d61
	* #676533
	* #5f3139
	* #37367d
* Combined hex will look like **666c61677b6833785f316e5f696d616765335f313937367d**.
* We got hex encoded flag. By decoding it we'll get the flag.

#### command:

```bash

echo 666c61677b6833785f316e5f696d616765335f313937367d | xxd -r -p

```

#### Flag:

`flag{h3x_1n_image3_1976}`

---

## 5. Triangle

#### Given files:

* triANGLE.png

#### Solution:

* This challenge is simple.By looking at the **metadata** of image, you'll find the flag.
* I used **exiftool** to read the meta data of the image.
* To install install this tool, enter the following command.
	```bash
	sudo apt intstall exiftool
	```
* Using this tool you'll get the meta data. The **Author** will denote the flag.

#### command:

```bash

exiftool triANGLE.png

```
	or
```bash

exiftool triANGLE.png | grep "Author"

```
#### Flag:

`flag{KVzPgxqTaKuBRAVRWaLs}`

---

## 6. T-REX?

#### Given files:

* 33333pass.zip

#### Solution:

* If you unzip the **33333pass.zip**, there will be a text file named **33333pass.txt**.
* This text file contains so many password.
* Our task is to find the right password with given conditions.
	1. password that starts with "A".
	2. The third character must be "t".
	3. The password must end with "o".
	4. The third last character must be a number between 0 to 9.
* If the password satisfies all the conditions, then thats the flag
* We cannot find it mannualy. I wrote a python script to find the password.
* Python script is uploaded [here](T-REX/exploit.py).

#### Flag:

`Aetowoo4ohm7ET0Wee2pheew2Ep4oo`

---

## 7. :0 :0 XM :L

#### Given files:

* FreedomCTF.docx

#### Solution:

* **Hint** : Sometimes you must check things manually :(
* After reading the **Hint**, I unziped the docx file using `unzip` command.
* I spent some time on reading all the extracted files.
* Then I wound `<!--F1@g: u1qq3a_grkg_1244 (r13)-->` in the file **word/styles.xml**.
* `u1qq3a_grkg_1244` is the flag , but the mentioned **(r13)** which is **Rot13**.
* The flag is encoded with **Rot13**. By decoding it, you'll get the flag.

#### command:

```bash

sudo apt install hxtools -y
echo "u1qq3a_grkg_1244" | rot13

```

#### Flag:

`flag{h1dd3n_text_1244}`

---

## 8. Simple PDF

#### Given files:

* Image.pdf

#### Solution:

* There are 6 Images and a blank page in the pdf
* I tried to copy the texts available in the pdf. I found the text `Flag hidden here` in the blank page.
* There is image hidden in the blank page.
* I used `foremost`  tool to extract the Images of the pdf.
* By Looking at `out/jpg` folder, you'll see the image of hidden flag.

#### command:

```bash

sudo apt install foremost
foremost Image.pdf
cd out/jpg/

```

#### Flag:

`flag{h3110_p8f_h1443n}`

---