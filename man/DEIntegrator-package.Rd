\name{DEIntegrator-package}
\alias{DEIntegrator-package}
\alias{DEIntegrator}
\alias{DEIntegrate}
\docType{package}
\title{
Integration With Double Exponential Formula
}
\description{
Integrate a given function using double exponential formula.
This work is just exporting the function written by John D. Cook,
which you can obtain from http://www.codeproject.com/KB/recipes/FastNumericalIntegration.aspx .
}
\usage{
DEIntegrate(f,lower,upper,eps=1e-10,output=FALSE)
}
\arguments{
  \item{f}{an R function taking a numeric vector of length one as first argument and returning a
  numeric vector of length one. }
  \item{lower, upper}{the limits of integration. Both must be finite.}
  \item{eps}{absolute accuracy requested.}
  \item{output}{logical. If true, estimated error and the number of function
    evaluations are printed.}
  
}
\value{
  A list with components:

  value: the final estimate of the integral

  abs.error: estimate of the modulus of the absolute error.

  evaluations: the number of function evaluations made during calculation.
}
\details{
\tabular{ll}{
Package: \tab DEIntegrator\cr
Type: \tab Package\cr
Version: \tab 1.0\cr
Date: \tab 2011-12-13\cr
License: \tab CPOL\cr
}
% ~~ An overview of how to use the package, including the most important ~~
% ~~ functions ~~


}
\author{
Sho Mizoe

Maintainer: Sho Mizoe <Sho_Mizoe@mist.i.u-tokyo.ac.jp>
}
\references{
Takahasi, Hidetosi; Mori, Masatake (1974), "Double exponential formulas for numerical integration", Publications of the Research Institute for Mathematical Sciences 9 (3): 721-741, doi:10.2977/prims/1195192451, ISSN 0034-5318.
}
% ~~ Optionally other standard keywords, one per line, from file KEYWORDS in ~~
% ~~ the R documentation directory ~~
%\keyword{ package }
%\seealso{
% ~~ Optional links to other man pages, e.g. ~~
% ~~ \code{\link[<pkg>:<pkg>-package]{<pkg>}} ~~
%}
%\examples{
%% ~~ simple examples of the most important functions ~~
%}
