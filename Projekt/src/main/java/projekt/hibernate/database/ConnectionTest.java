package projekt.hibernate.database;





import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class ConnectionTest {
	   private static SessionFactory factory; 
	   public static void main(String[] args) {
		   try {
	         new Configuration().configure().buildSessionFactory();
	      } catch (Throwable ex) { 
	         System.err.println("Failed to create sessionFactory object." + ex);
	         throw new ExceptionInInitializerError(ex); 
	      }
		      /*try {
		         factory = new Configuration().configure().buildSessionFactory();
		      } catch (Throwable ex) { 
		         System.err.println("Failed to create sessionFactory object." + ex);
		         throw new ExceptionInInitializerError(ex); 
		      }*/
	   }
}
