package model;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

public class RegisterProductLogic {
	public void execute(Product p,List<Product> list) {
		Date today = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
		String dateTime = sdf.format(today);
		p.setDateTime(dateTime);
		list.add(0,p);
	}
}
