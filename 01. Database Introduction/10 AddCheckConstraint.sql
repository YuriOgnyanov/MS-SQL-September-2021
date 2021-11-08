ALTER TABLE Users
ADD CONSTRAINT  ch_username check (LEN(Password) >= 5)