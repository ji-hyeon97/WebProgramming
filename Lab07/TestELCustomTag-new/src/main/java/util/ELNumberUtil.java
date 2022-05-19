package util;

import java.text.DecimalFormat;

public class ELNumberUtil {
	public static String format(int number) {
		DecimalFormat df = new DecimalFormat("#,##0");
		return df.format(number);
	}
}
