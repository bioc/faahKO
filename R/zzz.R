load(file.path(find.package("faahKO"), "data", "faahko.rda"))
attr(faahko, "filepaths") <- file.path(system.file(package="faahKO"), gsub("/", .Platform$file.sep, attr(faahko, "filepaths"))
