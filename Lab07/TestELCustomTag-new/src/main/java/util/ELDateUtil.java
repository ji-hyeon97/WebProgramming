package util;

import java.text.SimpleDateFormat;
import java.util.Date;

public class ELDateUtil {
	public static String format(Date date) {
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
		return formatter.format(date);
	}
}
