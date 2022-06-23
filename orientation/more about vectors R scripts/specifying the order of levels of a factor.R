# When it is created
results <- c("PS", "HD", "FL", "PS", "DI", "HD", "CR", "PS", "CR")
results <- factor(results, levels=c("FL", "PS", "CR", "DI", "HD"))

# After it is created
results <- c("PS", "HD", "FL", "PS", "DI", "HD", "CR", "PS", "CR")
results <- factor(results)
levels(results) <- c("FL", "PS", "CR", "DI", "HD")

# Now it gets sorted as desired
sort(results)