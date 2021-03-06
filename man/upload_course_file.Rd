% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/uploads.R
\name{upload_course_file}
\alias{upload_course_file}
\title{Upload a file to a course}
\usage{
upload_course_file(course_id, file_name, parent_folder_id = NULL,
  parent_folder_path = "/", on_duplicate = "overwrite")
}
\arguments{
\item{course_id}{valid course id}

\item{file_name}{file name in your current directory.
Any UTF-8 name is allowed. Path components such as `/` and `\` will be treated as part of the filename,
not a path to a sub-folder.}

\item{parent_folder_id}{The id of the folder to store the file in.
If this and parent_folder_path are sent an error will be returned. If neither is given,
a default folder will be used.}

\item{parent_folder_path}{The path of the folder to store the file in. The path separator is the forward slash `/`, never a back slash.
The folder will be created if it does not already exist. This parameter only applies to file uploads
in a context that has folders, such as a user, a course, or a group. If this and parent_folder_id are
sent an error will be returned. If neither is given, a default folder will be used.}

\item{on_duplicate}{How to handle duplicate filenames. If "overwrite", then this file upload will
overwrite any other file in the folder with the same name. If "rename", then this file will be
renamed if another file in the folder exists with the given name. If no parameter is given,
This doesn't apply to file uploads in a context that doesn't have folders.}
}
\value{
invisible
}
\description{
Upload a file to a course
}
\examples{
upload_course_file(course_id = 13212, file_name = "activity.pdf")
}
