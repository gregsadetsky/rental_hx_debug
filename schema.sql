DROP TABLE IF EXISTS apartments;
DROP TABLE IF EXISTS records;

CREATE TABLE apartments (
    id INTEGER PRIMARY KEY,
    housenumber TEXT NOT NULL,
    street TEXT NOT NULL,
    borough TEXT NOT NULL,
    unitnumber TEXT,
    postalcode TEXT
);

CREATE TABLE records (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    apartment_id TEXT NOT NULL,
    year TEXT NOT NULL,
    status TEXT NOT NULL,
    filing_date TEXT,
    legal_rent TEXT,
    preferential_rent TEXT,
    actual_rent TEXT,
    reasons_difference TEXT,
    lease_dates TEXT,
    FOREIGN KEY (apartment_id) REFERENCES apartments (id)
);