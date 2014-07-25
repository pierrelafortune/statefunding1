## this function describes the relationship between education funding and state size
fund_pop_ratio <- function() {
        state <- read.csv("~/data/state_pop_edu.csv")
        u18 <- read.csv("~/data/under18.csv") ## extra data to take into account the percentage of children (under 18) in each state
        l <- length(state[[1]])
        names(state) <- c("state", "pop", "funding")
        e_dat <- data.frame()
        p <- as.numeric(gsub(",","", state[["pop"]]))
        f <- as.numeric(gsub(",","", state[["funding"]]))
        sunder18 <- u18[,5]/100
        under18 <- p*sunder18
        figures <- f/under18
        figures_by_state <- data.frame(state$state, figures)
        figures_by_state
}
