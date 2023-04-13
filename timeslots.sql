CREATE TABLE IF NOT EXISTS timeslots (
  start TIME NOT NULL,
  end TIME NOT NULL,
  id INTEGER PRIMARY KEY
);

CREATE TABLE IF NOT EXISTS schedule (
  coursecode VARCHAR(40),
  roomid INTEGER,
  timeslotid INTEGER,
  UNIQUE (roomid, timeslotid),
  FOREIGN KEY (roomid) REFERENCES rooms(id),
  FOREIGN KEY (coursecode) REFERENCES courses(code),
  FOREIGN KEY (timeslotid) REFERENCES timeslots(id)
);
