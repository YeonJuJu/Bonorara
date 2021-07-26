package com.jangyu.bonorara.email;

import java.util.Random;

public class CertiCodeMaker {
	private int certiCodeLength = 10;
	private final char[] characterTable = {'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 
										   'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 
										   'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 
										   'Y', 'Z', '0', '1', '2', '3', '4', '5', 
										   '6', '7', '8', '9'};
	public String makeCertiCode() {
		Random random = new Random(System.currentTimeMillis());
		int tableLength = characterTable.length;
		StringBuffer buf = new StringBuffer(); 
		
		for(int i=0;i<certiCodeLength;i++) {
			buf.append(characterTable[random.nextInt(tableLength)]);
		}
		
		return buf.toString();
	}
	
	public int getCertiCodeLength() {
		return certiCodeLength;
	}
	
	public void setCertiCodeLength(int len) {
		this.certiCodeLength = len;
	}
}
