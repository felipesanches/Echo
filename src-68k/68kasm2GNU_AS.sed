# macros
s/^\([a-zA-Z0-9_]*\)[[:space:]]macro/.macro \1/
s/[[:space:]]*endm/.endm/

# comments
s/;\(.*\)/|\1/

# replace @labels by simple labels (is this correct?)
# s/\@\([a-zA-Z0-9]*\)/\1/

# remove appended \@ from special labels
# s/\([a-zA-Z0-9]*\)\\\@/\1/

# '*' syntax meaning 'this address'
s/\([[:space:]]*dbf[[:space:]]*d[0-7],[[:space:]]*\)\*/0:\n\10b/

# registers
s/d\([0-7]\)/\%d\1/g
s/a\([0-6]\)/\%a\1/g
s/sp/\%sp/g
s/pc/\%pc/g

s/rept/.rept/
s/endr/.endr/
s/incbin/.incbin/
s/even/.even/
