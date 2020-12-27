import org.chlorinepentoxide.quick.StandardHasher;

public class Main {
	
	public static void main(String[] args) {
		try {
			String name = args[0];
			StandardHasher hasher = new StandardHasher("SHA-256");
			String hash = hasher.hashFile(name);
			System.out.println("Hash: "+hash);
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
	
}