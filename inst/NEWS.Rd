\title{Update history for patched (unofficial) version of package "dlm"}
\name{NEWS}
\section{Changes in version 1.0-601 (2024-02-13)}{
  \itemize{
    \item{Edits to the \code{dlmLL} routine in \code{src/dlm.c}, to prevent errors coming from some versions of BLAS / LAPACK. 
    
    The \code{dlmLL} routine contains multiple calls to \href{https://netlib.org/lapack/explore-html/df/d22/group__gesdd_ga8941e5ff50de36580dae8940015e9cb0.html#ga8941e5ff50de36580dae8940015e9cb0}{\code{dgesdd}}, to compute singular value decompositions (SVDs) of various different matrices. The size of temporary workspace needed for these SVDs is nominally dependent on their dimension so that a single query will suffice to determine the workspace size throughout the routine. However, it seems that some BLAS / LPACK implementations try to be smarter about figuring out their workspace requirements (maybe by identifying linear dependencies and hence using information on the maximum number of nonzero singular values?): this can cause BLAS / LAPACK errors with some complex DLMs. The problem has been fixed by explicitly querying the workspace requirements prior to each affected call of \code{dgesdd}.}
  }
}

\section{Changes in version 1.0-600 (mid-2023)}{
  \itemize{
    \item{Richard Chandler created this unofficial copy of the \code{dlm} package, starting with version 1.0-6 of the original package. Memory leaks in \code{src/dlm.c} were fixed: these previously caused R to abort under Windows when working with complex dlms, and caused segfaults under Linux (Ubuntu). The changes are in lines 148, 806, 1371, 1997 and 3158 of file \code{src/dlm.c} in the 'official' version, where declarations
                
    \code{la_iwork = (int *) R_alloc( 8 * p, sizeof(int) );}
                
    are changed to
                
    \code{la_iwork = (int *) R_alloc( 8 * la_n, sizeof(int) );}

    The \code{la_iwork} variable is used to define storage requirements for the LAPACK \code{dgesdd} function: see the documentation for that function \href{https://netlib.org/lapack/explore-html/df/d22/group__gesdd_ga8941e5ff50de36580dae8940015e9cb0.html#ga8941e5ff50de36580dae8940015e9cb0}{\code{documentation for that function}} for justification of the revised values.
    }
  }
}
\section{Changes in version 1.1-0 (2010-02-15)}{
  \itemize{
  \item{\strong{Copied from NEWS for original dlm package:} in functions \code{dlmLL} and \code{dlmFilter}, whenever the observation
    variance \code{V} is found to be numerically singular, an 'epsilon' 
    is added to it (with a warning) in order to make the SVD-based 
    algorithms work.}
  }
}
