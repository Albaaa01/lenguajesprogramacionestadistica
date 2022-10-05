

# ID  ---------------------------------------------------------------------

##Lenguajes de programación estadistica
##Profesor: Christian Sucuzhanay Arevalo
##Alumno: Alba Mª Laguna Moraleda, EXP:21017327
## HANDS ON 01



# LOADING LIBS ------------------------------------------------------------

#install.packages("tidyverse","httr","janitor")
# INGEST ------------------------------------------------------------------

# SHORTCUTS ---------------------------------------------------------------

##control + l : clean
##control + windows + r : seccion

# GIT COMMANDS ------------------------------------------------------------

git status
git init
git add
git commit -m "message"
git push -u origin main
git branch -M nombre
git merge
git remote add origin https://github.com/sukuzhanay/LPE21535220.git
git clone https://github.com/sukuzhanay/LPE21535220.git
git pull 
git fetch
# TERMINAL COMMANDS -------------------------------------------------------

ls(lista)
cd
pwd
cd ..(ir para atras)
mkdir(directorio)
touch(crear archivo)
nano(invocas notepad)
less(abrir archivo desde terminal , deja subir y bajar)
cat (abrir archivo desde terminal, no deja subir y bajar)
clear
where
which



# LOADING LIBS ------------------------------------------------------------
### httr: enlaces fuera
### janitor: formatear/limpiar datos
install.packages("tidyverse")
install.packages("packman")
install.packages("httr") 
install.packages(c("tidyverse","httr","janitor","jsonlite"))

library(tidyverse,httr)


# BASIC OPERATORS ---------------------------------------------------------

cristina <- 20
clase_lep <- c("marta","emilia","pablo")
clase <- list("marta","emilia","pablo",52)
url_<-"https://sedeaplicaciones.minetur.gob.es/ServiciosRESTCarburantes/PreciosCarburantes/EstacionesTerrestres/"
gln<-httr::GET("https://sedeaplicaciones.minetur.gob.es/ServiciosRESTCarburantes/PreciosCarburantes/EstacionesTerrestres/")
xml2::read_xml(gln$content)
glimpse(gln)

f_raw<-jsonlite::fromJSON(url_)

gln_source<-f_raw$ListaEESSPrecio %>% glimpse()

janitor::clean_names(gln_source) %>% glimpse()

type.convert(gln_source,locale= )

# READING && WRITTING -----------------------------------------------------

#readr::