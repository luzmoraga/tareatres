


#                                   TAREA NUMERO 3

#1
#FUNCIONRESULTADO : int int int -> string
#dicha funcion recivira la cantidad de personas en toral que votaron si y las que votaron no
#como resultado entregara un texto que indicara la opcion ganadora, segun las condiciones que se establescan.
#Ejemplo  100; 50; 30 -> "si"


FUNCIONRESULTADO<- function(TOTAL,VOTOSI, VOTONO)
{
  TOTALVOTOS<- VOTOSI+VOTONO
  Q<-TOTALVOTOS*100/TOTAL
  if(Q>50+1)
  {
    if(VOTOSI>VOTONO)
    {
      R<-"SI"
    }
    if(VOTONO>VOTOSI)
    {
      R<-"NO"
    }
    if(VOTONO==VOTOSI)
    {
      R<-"NO"
    }
  }else if(Q<50+1)
    if((VOTOSI*100/TOTAL)>=30)
    { 
      R<-"SI"
    }
  if ((VOTONO*100/total)>=30)
  {
    R<-"NO"
  }else if(VOTOSI*100/TOTAL<30&&VOTONO*100/TOTAL<30)
  {
    R<-"NO"
  }
  print (R)
  
}

#2

#CAPITALINICIAL :double double int -> double
#la funcion calculara el capital incial que debe 
#contar para obtener el retorno futuro deseado 
# se entrega el retorno futuro (CF), la tasa de interes (I) de manera decimal
# ademas de incluir el numero de periodos (AÑOS)



CAPITALINICIAL<- function(CF,I,AÑOS){
  INTERES<-I/100
  CI<-CF/((1+INTERES)^AÑOS)
  print (CI)
}
CAPITALINICIAL(100,3,5)

# funcion "mazo" 
#la funcion debe contar los puntos de la cartas de un mazo
#ejemplo : (A,3),(J,4) = 104
## A=20 J=11 Q=12 y K=13 

A<-20
J<-11
Q<-12
K<-13

mazo<-list(c(A,2),c(5,4),c(J,3))
totalpuntos<-0
contarpuntos<-function(mazo){
  for(x in 1 :length(mazo)){
    puntocarta<-unlist(mazo[x])
    totalpuntos<-puntocarta[1]*puntocarta[2]+totalpuntos
  }
  return (totalpuntos)
}
contarpuntos(mazo)
