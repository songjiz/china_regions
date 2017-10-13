#! /usr/bin/env ruby
require 'sqlite3'
require 'yaml'

MIGRATE_SQL_STATEMENTS = <<-SQL.freeze
-- Create provinces table.
DROP TABLE IF EXISTS provinces;
CREATE TABLE provinces (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  code VARCHAR(10),
  name VARCHAR(30),
  alias VARCHAR(20),
  pinyin VARCHAR(35),
  pinyin_abbr VARCHAR(20),
  zip_code VARCHAR(10)
);
CREATE INDEX index_provinces_on_code ON provinces(code);
CREATE INDEX index_provinces_on_pinyin ON provinces(pinyin);
CREATE INDEX index_provinces_on_pinyin_abbr ON provinces(pinyin_abbr);
CREATE INDEX index_provinces_on_zip_code ON provinces(zip_code);

-- Create cities table.
DROP TABLE IF EXISTS cities;
CREATE TABLE cities (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  code VARCHAR(10),
  province_code VARCHAR(10),
  name VARCHAR(30),
  alias VARCHAR(20),
  pinyin VARCHAR(35),
  pinyin_abbr VARCHAR(20),
  zip_code VARCHAR(10),
  FOREIGN KEY(province_code) REFERENCES provinces(code)
);
CREATE INDEX index_cities_on_code ON cities(code);
CREATE INDEX index_cities_on_pinyin ON cities(pinyin);
CREATE INDEX index_cities_on_pinyin_abbr ON cities(pinyin_abbr);
CREATE INDEX index_cities_on_zip_code ON cities(zip_code);

-- Create counties table.
DROP TABLE IF EXISTS counties;
CREATE TABLE counties (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  code VARCHAR(10),
  city_code VARCHAR(10),
  name VARCHAR(30),
  alias VARCHAR(20),
  pinyin VARCHAR(35),
  pinyin_abbr VARCHAR(20),
  zip_code VARCHAR(10),
  FOREIGN KEY(city_code) REFERENCES cities(code)
);
CREATE INDEX index_counties_on_code ON counties(code);
CREATE INDEX index_counties_on_pinyin ON counties(pinyin);
CREATE INDEX index_counties_on_pinyin_abbr ON counties(pinyin_abbr);
CREATE INDEX index_counties_on_zip_code ON counties(zip_code);
SQL

INSERT_PROVINCE_SQL = <<-SQL.freeze
INSERT INTO provinces(code, name, alias, pinyin, pinyin_abbr, zip_code) VALUES(?, ?, ?, ?, ?, ?);
SQL

INSERT_CITY_SQL = <<-SQL.freeze
INSERT INTO cities(code, province_code, name, alias, pinyin, pinyin_abbr, zip_code) VALUES(?, ?, ?, ?, ?, ?, ?);
SQL

INSERT_COUNTY_SQL = <<-SQL.freeze
INSERT INTO counties(code, city_code, name, alias, pinyin, pinyin_abbr, zip_code) VALUES(?, ?, ?, ?, ?, ?, ?);
SQL

begin
  # Open a database
  db = SQLite3::Database.new "china_regions.db"
  puts MIGRATE_SQL_STATEMENTS
  db.execute_batch MIGRATE_SQL_STATEMENTS
  regions = YAML.load(File.read('regions.yml'))

  db.transaction do
    regions.each do |province|
      db.execute INSERT_PROVINCE_SQL, province[:code], province[:name], province[:alias], province[:pinyin], province[:pinyin_abbr], province[:zip_code]
      if province.key?(:cities)
        province[:cities].each do |city|
          db.execute INSERT_CITY_SQL, city[:code], province[:code], city[:name], city[:alias], city[:pinyin], city[:pinyin_abbr], city[:zip_code]
          if city.key?(:counties)
            city[:counties].each do |county|
              db.execute INSERT_COUNTY_SQL, county[:code], city[:code], county[:name], county[:alias], county[:pinyin], county[:pinyin_abbr], county[:zip_code]
            end
          end
        end
      end
    end
  end # transaction
rescue => e
  STDERR.puts "#{e.message} (#{e.class})\n" << e.backtrace.join("\n")
ensure
  db.close
end
