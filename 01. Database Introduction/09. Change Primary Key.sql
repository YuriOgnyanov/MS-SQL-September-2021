ALTER TABLE Users
DROP CONSTRAINT PK__Users__3214EC07D6266ED4

ALTER TABLE Users
ADD CONSTRAINT PR_USERS PRIMARY KEY (Id,Username)