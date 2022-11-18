library(data.table)
library(dplyr)
library(ggplot2)


ffs <- list.files(pattern="fib_.*.csv")

aa <- data.table()
for(ff in ffs){
	params <- stringr::str_split(ff,'_')[[1]][2] %>% stringr::str_split(.,'\\.')
	params <- as.integer(params[[1]][1])
	tmp <- fread(ff, sep=',', header=TRUE, select=1:3) %>%
		mutate(param=params) %>%
		mutate(command=c('C','Julia', 'Python', 'R'))
	aa <- rbind(aa, tmp)
}

aa$command <- factor(aa$command, levels=c('R','Python','Julia','C'))

P1 = ggplot(data=aa, aes(x=param, y=log10(mean))) + geom_point(aes(color=command)) +
    geom_line(aes(color=command)) + 
    scale_x_continuous(name='Fibonacci numbers') +
    scale_y_continuous(name='log10(time) seconds') +
    scale_color_discrete(name='Languages') +
    theme_bw()

P2 = ggplot(data=aa, aes(x=param, y=mean)) + geom_point(aes(color=command)) +
    geom_line(aes(color=command)) + 
    scale_x_continuous(name='Fibonacci numbers') +
    scale_y_continuous(name='Time seconds') +
    scale_color_discrete(name='Languages') +
    theme_bw()

cowplot::plot_grid(P1, P2, ncol=2)

ggsave('Fibonacci_benchmark.png', width=10, height=6)

################################################################################
library(data.table)
library(dplyr)
library(ggplot2)


ffs <- list.files(pattern="prime_.*.csv")

aa <- data.table()
for(ff in ffs){
	params <- stringr::str_split(ff,'_')[[1]][2] %>% stringr::str_split(.,'\\.')
	params <- as.integer(params[[1]][1])
	tmp <- fread(ff, sep=',', header=TRUE, select=1:3) %>%
		mutate(param=params) %>%
		mutate(command=c('C','Julia', 'Python', 'R'))
	aa <- rbind(aa, tmp)
}

aa$command <- factor(aa$command, levels=c('R','Python','Julia','C'))

P1 <- ggplot(data=aa, aes(x=param, y=log10(mean))) + geom_point(aes(color=command)) +
    geom_line(aes(color=command)) + 
    scale_x_continuous(name='Number range') +
    scale_y_continuous(name='log10(time) seconds') +
    scale_color_discrete(name='Languages') +
    theme_bw()

P2 <- ggplot(data=aa, aes(x=param, y=mean)) + geom_point(aes(color=command)) +
    geom_line(aes(color=command)) + 
    scale_x_continuous(name='Number range') +
    scale_y_continuous(name='Time seconds') +
    scale_color_discrete(name='Languages') +
    theme_bw()

cowplot::plot_grid(P1, P2, ncol=2)

ggsave('Prime_benchmark.png', width=10, height=6)
