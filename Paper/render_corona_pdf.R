if(Sys.info['user'] == 'cindycheng'){
	setwd("/Users/cindycheng/Dropbox/corona-govt-response/Paper/")
}
bookdown:::render_book('foo.Rmd', "bookdown::pdf_book", config_file = "_bookdown.yml")

 