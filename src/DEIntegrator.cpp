#include <Rcpp.h>
#include <boost/bind.hpp>
#include <boost/function.hpp>
#include "DEIntegrator.h"

using namespace Rcpp;

boost::function<double (double)> R_function_wrapper(const Function & func){
  return boost::bind<double>(as<double>,boost::bind<SEXP>(func,_1));
}

List DEIntegrate(const Function & func,double lower,double upper,double eps, bool output){
  boost::function<double (double)> wrapped_function = R_function_wrapper(func);
  double  errorEstimate;
  int numFunctionEvaluations;
  double value=
    DEIntegrator<boost::function<double(double)> >::Integrate(wrapped_function,lower,upper,eps,
							      numFunctionEvaluations,errorEstimate);
  if(output){
    Rprintf("estimated error:%20e\n",errorEstimate);
    Rprintf("# of function evaluations:%6d\n",numFunctionEvaluations);
  }

  return List::create(_["value"]=value,_["abs.error"]=errorEstimate,
		      _["evaluations"]=numFunctionEvaluations);
}

RCPP_MODULE(DEBody){
  function("DEIntegrate",&DEIntegrate,
	   List::create(_["f"],_["lower"],_["upper"],
			_["eps"]=1e-10,_["output"]=false),
	   "performs numerical integration based on double exponential formula");
}
