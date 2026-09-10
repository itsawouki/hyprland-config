local mainMod = "SUPER"

hl.bind(mainMod .. " + SHIFT + V", hl.dsp.exec_cmd("qs -p /home/itsawouki/Documents/myshell ipc call island toggleClipboard"))
hl.bind(mainMod .. " + SHIFT + M", hl.dsp.exec_cmd("qs -p ~/.config/Aki-Shell/ ipc call music toggle"))
hl.bind(mainMod .. " + Escape", hl.dsp.exec_cmd("qs -p ~/.config/Aki-Shell/ ipc call power toggle"))
hl.bind(mainMod .. " + D", hl.dsp.exec_cmd("qs -p ~/.config/Aki-Shell/ ipc call island toggle"))
hl.bind(mainMod .. " + M", hl.dsp.exec_cmd("qs -p ~/.config/Aki-Shell/ ipc call island toggleMovies"))
hl.bind(mainMod .. " + A", hl.dsp.exec_cmd("qs -p ~/.config/Aki-Shell/ ipc call audio toggle"))
hl.bind(mainMod .. " + N", hl.dsp.exec_cmd("qs -p ~/.config/Aki-Shell/ ipc call network toggle"))
hl.bind(mainMod .. " + Y", hl.dsp.exec_cmd("qs -p ~/.config/Aki-Shell/ ipc call island toggleYoutube"))
hl.bind(mainMod .. " + W", hl.dsp.exec_cmd("qs -p ~/.config/Aki-Shell/ ipc call wallpaper toggle"))
hl.bind(mainMod .. " + ALT + V", hl.dsp.exec_cmd("qs -p ~/.config/Aki-Shell/ ipc call island toggleClipboard"))
hl.bind(mainMod .. " + S", hl.dsp.exec_cmd("qs -p ~/.config/Aki-Shell/ ipc call settings toggle"))

