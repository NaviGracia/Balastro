import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Scanner;

public class App {
    static Scanner sc = new Scanner(System.in);
    
    static public void consulatBD(Statement st, Connection conexion) throws Exception{
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

    static public void insertarDatos(Connection conexion){
         //Insertar Datos
         String sentenciaSQL = "INSERT INTO jokers VALUES(?, ?)";
         PreparedStatement sentencia = null;
 
         try{
             sentencia = conexion.prepareStatement(sentenciaSQL);
             sentencia.setInt(1, 2);
             sentencia.setString(2, "Cuatro Dedos");
             sentencia.setString(3, "Las escaleras y color pueden hacerse con cuatro cartas.");
             sentencia.executeUpdate();
         }catch (SQLException sqle) {
             sqle.printStackTrace();
         } finally {
             if (sentencia != null)
                 try {
                     sentencia.close();
                 } catch (SQLException sqle) {
                     sqle.printStackTrace();
                 }
             } 
    }
    public static void main(String[] args) throws Exception {
        //Conectar BD
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

        System.out.println("Menú BD Balatro:" + "\n 1. Insertar Datos" + "\n 2. Consultar");
        int eleccion = sc.nextInt();
        switch (eleccion) {
            case 1:
                insertarDatos(conexion);
                break;
            case 2:
                consulatBD(st, conexion);
                break;
            default:
                break;
        }

       
    }
}
