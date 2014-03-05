# local variables
s/\@Echo_WaitZ80\\\@:/1:/
s/\@Echo_WaitZ80\\\@/1b/

s/\@Try:/1:/
s/\@Try/1b/

s/\@Ready:/2:/
s/\@Ready/2f/

s/\@NotBusy:/1:/
s/\@NotBusy/1f/

s/\@LoadLoop/LoadLoop/
s/\@Z80Program:/Z80Program:/

# lea syntax
s/\@\(Z80Program\)(pc)/\1/

s/\@Z80ProgSize equ \*-\@Z80Program/EndOfZ80Program:\nZ80ProgSize equ EndOfZ80Program-Z80Program/

s/\#\@Z80ProgSize/Z80ProgSize/

