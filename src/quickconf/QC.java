import java.util.Vector;
import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.File;

public class QC
{
	private static Vector<String> ecScript;
	
	public static void main(String[] args) {
		ecScript = new Vector<>(1,1);
		ecScript.addElement("@echo off");
		
		write(ecScript, "qc0.cmd");
	}
	
	private static void write(Vector<String> v, String fn) {
		try {
			BufferedWriter bw = new BufferedWriter(new FileWriter(new File(fn)));
			for(int i=0;i<v.size();i++) {
				bw.write(v.elementAt(i));
				bw.newLine();
			}
			bw.close();
		} catch(Exception e) {
			System.out.println("QCError-X01:FATAL");
			System.exit(-1);
		}
	}
	
	private static String merge(String[] arr) {
		String st="";
		for(String e:arr) st+=e+" ";
		return st.trim();
	}
	
}