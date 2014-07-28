load(file.path(find.package("faahKO"), "data", "faahko.rda"))
filepaths(faahko) <- file.path(system.file(package="faahKO"),
   gsub("/", .Platform$file.sep, attr(faahko, "filepaths")))
