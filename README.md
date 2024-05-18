### xxd-corrupt
- Experiment to evaluate how much corruption results from removing a single line from the hexdump of an image before converting it back. Inspiration for the idea came from RobertElderSoftware.
- Built for curiosity and insights into how corruption of hexdump affects the image file being displayed. 


### How to Use
1. Pick an image and copied it to the directory renaming it img.png
2. Convert it to hexdump and recorded the numbrer of lines in the hexdump
    - `xxd img1.png img1.xxd && wc -l img1.xxd`
3. Create new copies of the file based on the number of lines, say your hexdump is 2000 lines then create more copies as shown
    - `for i in {2..2000}; do cp img1.png img$i.png`
4. Once you have this set up run the script `corrupt.sh`

### Findings
- If the first few lines are eliminated nothing at all shows up in the image viewer
- A few 100 images down you see a pattern, the more further down the line was deleted the more of the image gets correctly displayed
- It looks like the image gets corrupted only once it hits the missing bytes and anything up until that point gets rendered correctly
