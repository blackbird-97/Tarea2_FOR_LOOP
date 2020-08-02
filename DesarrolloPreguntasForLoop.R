listaDocumentos <- list(c("mp","Juan","Christofer"),c("of","av01","ampr"),
                        c("of","av01","ante"), c("of","av08","arme"),c("of","av02","ante"),
                        c("of","av07","ampr"),c("of","av03","dape"),c("of","av01","meca"),
                        c("of","av02","dape"),c("mp","Antonia"),c("mp","Christian","Mario"),
                        c("mp","Jose","Pedro","Antonela"),c("of","av05","meca"),
                        c("of","av04","dape"),c("of","av02","arme"))
##Las mp tienen los nombres de las personas a las cuales están asociadas,
#realice una función que cuente cuántos niños hay por cada una, y entregue una estadística
#de cuántos niños hay por mp.
Totalmp<-0
Totalniños<-0
for (Totales in listaDocumentos){
 if(Totales[1] =="mp"){
    Totalmp<-Totalmp+1
    Totalniños<- Totalniños+(length(Totales)-1)
 }
  
}

print(paste("Se cuentan con", Totalmp, "mp de", Totalniños,"niños")) 

##Ejercicio 2: Los oficios están compuestos por el código al cual pertenecen, construya 
#una función que almacene los códigos y las temáticas a las que están asociadas.

av01<-c()
av02<-c()
av03<-c()
av04<-c()
av05<-c()
av07<-c()
av08<-c()

for (CodigosTotales in listaDocumentos) {
  if(CodigosTotales[1]=="of"){
      if(CodigosTotales[2]=="av01"){
        av01<-c(CodigosTotales[3],av01)
      }
      if(CodigosTotales[2]=="av02"){
        av02<-c(CodigosTotales[3],av02)
      }
      if(CodigosTotales[2]=="av03"){
        av03<-c(CodigosTotales[3],av03)
      }
      if(CodigosTotales[2]=="av04"){
        av04<-c(CodigosTotales[3],av04)
      }
      if(CodigosTotales[2]=="av05"){
        av05<-c(CodigosTotales[3],av05)
      }
      if(CodigosTotales[2]=="av07"){
        av07<-c(CodigosTotales[3],av07)
      }
      if(CodigosTotales[2]=="av08"){
        av08<-c(CodigosTotales[3],av08)
      }
  }
}
print(paste("av01",",",av01[1],",",av01[2],",",av01[3]))
print(paste("av02",",",av02[1],",",av02[2],",",av02[3]))
print(paste("av03",",",av03[1]))
print(paste("av04",",",av04[1]))
print(paste("av05",",",av05[1]))
print(paste("av07",",",av07[1]))
print(paste("av08",",",av08[1]))

##Construya una función que actúe de juez y retorne aprobada o reprobada para los diferentes
#oficios, y entregue la cantidad que hay de cada una.
Reprobada<-0
Aprobada<-0
Totalof<-0
for (Revision in listaDocumentos) {
  if(Revision[1]=="of"){
    Totalof<-Totalof+1
    if(Revision[2]=="av01"||Revision[2]=="av03"||Revision[2]=="av05"||Revision[2]=="av07"){
     Reprobada<-Reprobada+1
    } else if(Revision[2]=="av02"||Revision[2]=="av04"||Revision[2]=="av08"){
      Aprobada<-Aprobada+1
    }
  }
  
}
print(paste("Llegaron un total de",Totalof,"oficios, de los cuales:",Reprobada,"han sido reprobados, y",Aprobada,"han sido aprobados."))
