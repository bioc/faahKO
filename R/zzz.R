.onLoad <- function(libname, pkgname)
{
     load(file.path(find.package("faahKO"), "data", "faahko.rda"))
     nms <- file.path(system.file(package="faahKO"),
         gsub("/", .Platform$file.sep, attr(faahko, "filepaths")))
     filepaths(faahko) <- nms
     assign("faahko", faahko, envir = getNamespace("faahKO"))
}
