-- Need a later version of a distribution like CDH4.5.0+ for using Parquet Hive out of the box
CREATE TABLE if not exists apache_log_parquet(
        IP              STRING,
        t	        STRING,
        URL             STRING,
        referrer        STRING,
        user_agent      STRING,
	ts		BIGINT,
	session_id	INT
PARTITIONED BY (year int, month int, day int)
ROW FORMAT SERDE 'parquet.hive.serde.ParquetHiveSerDe'
STORED AS
INPUTFORMAT "parquet.hive.DeprecatedParquetInputFormat"
OUTPUTFORMAT "parquet.hive.DeprecatedParquetOutputFormat";