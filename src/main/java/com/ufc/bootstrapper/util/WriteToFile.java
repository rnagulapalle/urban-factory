package com.ufc.bootstrapper.util;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;

public class WriteToFile {

	public static void write(File file, String content) {
		System.out.println("this is inside WriteFile.write method");
		System.out.println(file);
		System.out.println(content);
		try {
			FileWriter fw = new FileWriter(file.getAbsoluteFile(), true);
			System.out.println(fw);
			BufferedWriter bw = new BufferedWriter(fw);
			bw.write(content);
			bw.newLine();
			bw.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
}
