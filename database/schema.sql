CREATE TABLE IF NOT EXISTS consent_data (
   id INTEGER PRIMARY KEY AUTOINCREMENT,    -- cookie consent table entries name and domain pair are not necessarily unique
   name TEXT NOT NULL,                      -- name as specified in the table.
   domain TEXT NOT NULL,                    -- domain as specified in the table.
   path TEXT DEFAULT "/",                   -- path is rarely present

   cat_id INTEGER NOT NULL,                 -- category id to identify the category
   cat_name VARCHAR(256) NOT NULL,          -- the cookie category. Name of the category can vary greatly.
   purpose TEXT,                            -- some sites describe the purpose a cookie has
   type VARCHAR(256)                        -- Cookiebot lists different types of declared technology
);