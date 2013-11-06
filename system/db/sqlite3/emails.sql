--
-- Tabella delle e.mail
--
CREATE TABLE IF NOT EXISTS emails (
  id INTEGER NOT NULL PRIMARY KEY,
  sol_id INTEGER NOT NULL REFERENCES sols(id) ON DELETE CASCADE ON UPDATE CASCADE,
  pol_id INTEGER NOT NULL REFERENCES pols(id) ON DELETE CASCADE ON UPDATE CASCADE,
  source_id INTEGER NOT NULL REFERENCES sources(id) ON DELETE CASCADE ON UPDATE CASCADE,
  capture_date TIMESTAMP NOT NULL DEFAULT '0000-00-00 00:00:00',
  decoding_date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  viewed_date TIMESTAMP NOT NULL DEFAULT '0000-00-00 00:00:00',
  data_size INTEGER,
  first_visualization_user_id INTEGER NOT NULL DEFAULT  0,
  flow_info VARCHAR( 255 ) NOT NULL,
  receive BOOL DEFAULT 0,
  relevance INTEGER,
  comments VARCHAR( 1024 ),
  username VARCHAR( 40 ),
  password VARCHAR( 40 ),
  sender VARCHAR( 40 ),
  receivers VARCHAR( 1024 ),
  subject VARCHAR( 1024 ),
  mime_path VARCHAR( 255 ),
  attach_dir VARCHAR( 255 ),
  parts VARCHAR( 40 ) DEFAULT 'ALL'
);