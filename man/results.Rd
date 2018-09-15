\name{results}
\alias{results}
\docType{data}
\title{results of a imagimary class}
\description{

}
\usage{data(results)}
\format{
  A data frame with 300 bservations on the following 2 variables.
  \describe{
    \item{classe}{a factor with levels a-d}
    \item{grades}{students' grades}
    \item{gradesmath}{students' grades in maths}
  }
}

\examples{
data(results)

if(FALSE){##results
set.seed(1)# fixes a seed number
N  <- 300
H <- 4
classe <- (letters[1:H])[ceiling(4*runif(N))]
grades <- rbinom(N,rep(20,N),.4+
                   .25*(classe=="a")+
                   .4*(classe=="b")+
                   .15*(classe=="c"))

set.seed(1)
gradesmath<- 3-3*runif(N)+grades;
gradesmath[gradesmath<0]<-0;
gradesmath[gradesmath>20]<-20;
results <- data.frame(classe=classe,
                      grades=grades,
                      gradesmath=gradesmath)
N_1 <- 300
classe_1<- (letters[1:H])[ceiling(4*runif(N))]
grades_1<- rbinom(N,rep(20,N),.4+
                    .25*(classe_1=="a")+
                    .4*(classe_1=="b")+
                    .15*(classe_1=="c")) 
results_1<- data.frame(classe=classe_1,
                       grades=grades_1)

}
}
\keyword{datasets}
