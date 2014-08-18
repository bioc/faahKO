.onLoad <- function(libname, pkgname)
{
     suppressPackageStartupMessages(require(xcms))
     load(file.path(find.package("faahKO"), "data", "faahko.rda"))
     nms <- file.path(system.file(package="faahKO"),
         gsub("/", .Platform$file.sep, attr(faahko, "filepaths")))
     filepaths(faahko) <- nms
     assign("faahko", faahko, env = getNamespace("faahKO"))
}
