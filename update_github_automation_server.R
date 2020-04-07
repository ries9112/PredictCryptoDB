db_user = Sys.getenv('db_user')
db_pswd = Sys.getenv('db_pswd')
db_ip = Sys.getenv('db_ip')

bookdown::render_book('index.Rmd', 'bookdown::gitbook', clean_envir = FALSE)

# set email
system('git config --local user.email "ries9112@colorado.edu"')
# set username
system('git config --local user.name "ries9112"')
# Commit to GitHub!
system('git commit -m "Update book" -a')
# Push to GitHub!
system('git push origin master')
