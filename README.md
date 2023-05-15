i know we have ready modules for website on s3 in terraforom and one of best practices is to use modules when possible but i wrote it from scratch because it makes more sense as a challenge rather than call somebody's work

relationship between users/groups and polcies could be done in a more scalable way

also if i were doing it id add user emails and automatically send them the password links so they could have easy access 

i could also do entire thing as a module so then we could create multiple websites (easy to implement)

I didnt do auto deployment but I'd do it with github actions workflow (could add some custom commands there but even terraform plan validate apply would be good start)

for approximately one hour it's ok