package com.team1.memo;

import java.text.SimpleDateFormat;
import java.util.Date;

public class Test {
	public static void main(String[] args) {
		Date date = new Date();
		SimpleDateFormat transFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
		String to = transFormat.format(date); //현재시간을 string으로
		
		//System.out.println(to);
		
		for(int i =1;i<=300;i++){
			System.out.println("insert into memo(mno,mname,mcontent,password) values        ("+i+",'test_name"+i+"'    ,'test_content"+i+"','1234');");
		}
	}
}
