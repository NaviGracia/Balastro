import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class App {
    public static void main(String[] args) throws Exception {
        try {
            Class.forName("org.postgresql.Driver");
        } catch (Exception e) {
            // TODO: handle exception
            System.out.println("Error en registro driver");
        }

        Connection conexion = null;
        conexion = DriverManager.getConnection("jdbc:postgresql://localhost:5432/Balatro", "dam", "dam");
        Statement st = conexion.createStatement();
        conexion.setAutoCommit(false);

        //Consulta
        conexion.commit();
        ResultSet rs = st.executeQuery("SELECT * FROM jokers");
        int n = 0;
        System.out.println("Jokers Balatro:");
        while (rs.next()) {
            System.out.println(rs.getString(1) + " " + rs.getString(2) + ": " + rs.getString(3));
            n++;
        }
        rs.close();
        st.close();
        conexion.close();
    }
}
