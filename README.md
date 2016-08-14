# Norikra::UDF::DateFormat

Norikra UDF for flexible date formatting.

## Installation

On JRuby which Norikra runs:

    $ gem install norikra-udf-dateformat

## Usage

For a field `timestamp` which has the UNIX timestamp in a **millisecond** range,

```sql
SELECT dateformat(timestamp, 'yyyy-MM-dd HH:mm:ss', 'UTC') AS s_date
FROM test_target.win:time_batch(5 min)
```

## License

MIT
