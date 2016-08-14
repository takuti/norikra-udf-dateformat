package me.takuti.norikra.udf;

import java.util.Date;
import java.util.TimeZone;
import java.text.SimpleDateFormat;

public final class DateFormat {
  public static String format(final long timestamp, final String pattern, final String zone) {
    SimpleDateFormat df = new SimpleDateFormat(pattern);
    df.setTimeZone(TimeZone.getTimeZone(zone));

    return df.format(new Date(timestamp));
  }
}
