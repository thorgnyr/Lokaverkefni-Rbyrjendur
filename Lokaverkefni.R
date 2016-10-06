eignir <- read.table("gagnasafn_endurmat2017.csv", header = T, sep = ";", fileEncoding = "latin1")
ggplot(eignir, aes(x=ibm2, y=kaupverd)) + geom_point()
str(eignir)




#Til að leiðrétta text-enc vandamálin í skránni á einfaldan hátt.
#Líka hægt að nota fileEncoding í read.table() skipuninni.
eignir$teg_eign <- as.character(eignir$teg_eign)
eignir$teg_eign <- gsub("Einb<fd>lish<fa>s", "Einbylishus", eignir$teg_eign)
