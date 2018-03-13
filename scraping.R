
pacman::p_load(rvest, dplyr, qdap)

url = 'https://www.rover.com/search/'

webpage = read_html(url)

name_html = html_nodes(webpage, '.sitter-link')
name_data = html_text(name_html)
name_data = mgsub(text.var = name_data, pattern = c(' ', '\n'), replacement = '')

cost_html = html_nodes(webpage, '.text-orange strong')
cost_data = html_text(cost_html)
cost_data = mgsub(text.var = cost_data, pattern = c(' ', '\n'), replacement = '')








url = 'http://www.imdb.com/search/title?count=100&release_date=2016,2016&title_type=feature'
webpage = read_html(url)



rank_data_html <- html_nodes(webpage,'.text-primary')
rank_data <- html_text(rank_data_html)


title_html = html_nodes(webpage, '.lister-item-header a')
title_data = html_text(title_html)
