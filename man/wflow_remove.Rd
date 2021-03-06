% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/wflow_remove.R
\name{wflow_remove}
\alias{wflow_remove}
\title{Remove files}
\usage{
wflow_remove(files, message = NULL, git = TRUE, dry_run = FALSE,
  project = ".")
}
\arguments{
\item{files}{character. Files to be removed. Supports file
\href{https://en.wikipedia.org/wiki/Glob_(programming)}{globbing}.}

\item{message}{character (default: NULL). A commit message.}

\item{git}{logical (default: TRUE). Commit the changes (only applicable if
Git repository is present).}

\item{dry_run}{logical (default: FALSE). Preview the files to be removed but
do not actually remove them.}

\item{project}{character (default: ".") By default the function assumes the
current working directory is within the project. If this is not true,
you'll need to provide the path to the project directory.}
}
\value{
An object of class \code{wflow_remove}, which is a list with the
  following elements:

  \itemize{

  \item \bold{files}: The relative path(s) to the removed file(s).

  \item \bold{message}: The message describing the commit (if applicable).

  \item \bold{dry_run}: The input argument \code{dry_run}.

  \item \bold{commit}:The object returned by
  \link{git2r}::\code{\link[git2r]{commit}} (only included if \code{dry_run
  == FALSE}).

  \item \bold{files_git}: The relative path(s) to the file(s) removed from
  the Git repository.

  }
}
\description{
\code{wflow_remove} removes files. If the file to be removed is an R Markdown
file, the corresponding HTML and other related files are also removed. If the
workflowr project uses Git, \code{wflow_remove} commits the changes.
}
\examples{
\dontrun{

# Remove a single file
wflow_remove("analysis/file.Rmd", "Remove old analysis.")
# Remove multiple files
wflow_remove(c("analysis/file.Rmd", "output/small-data.txt"),
             "Remove old analysis and its associated data.")
}

}
\seealso{
\code{\link{wflow_git_commit}}
}
