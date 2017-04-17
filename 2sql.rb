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

-- Create districts table.
DROP TABLE IF EXISTS districts;
CREATE TABLE districts (
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
CREATE INDEX index_districts_on_code ON districts(code);
CREATE INDEX index_districts_on_pinyin ON districts(pinyin);
CREATE INDEX index_districts_on_pinyin_abbr ON districts(pinyin_abbr);
CREATE INDEX index_districts_on_zip_code ON districts(zip_code);
SQL

INSERT_PROVINCE_SQL = <<-SQL.freeze
INSERT INTO provinces(code, name, alias, pinyin, pinyin_abbr, zip_code) VALUES(?, ?, ?, ?, ?, ?);
SQL

INSERT_CITY_SQL = <<-SQL.freeze
INSERT INTO cities(code, province_code, name, alias, pinyin, pinyin_abbr, zip_code) VALUES(?, ?, ?, ?, ?, ?, ?);
SQL

INSERT_DISTRICT_SQL = <<-SQL.freeze
INSERT INTO districts(code, city_code, name, alias, pinyin, pinyin_abbr, zip_code) VALUES(?, ?, ?, ?, ?, ?, ?);
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
          if city.key?(:districts)
            city[:districts].each do |district|
              db.execute INSERT_DISTRICT_SQL, district[:code], city[:code], district[:name], district[:alias], district[:pinyin], district[:pinyin_abbr], district[:zip_code]
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