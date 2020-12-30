import org.chlorinepentoxide.quick.StandardHasher;

public class Main {
	
	public static void main(String[] args) {
		String rootName = args[0] + "\\";
		try {
			String name = rootName + args[1];
			System.out.println(rootName+"\n"+args[1]);
			StandardHasher hasher = new StandardHasher("SHA-256");
			String hash = hasher.hashFile(name);
			System.out.println("Hash: "+hash);
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
	
}