import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Scanner;

public class App {
    static Scanner sc = new Scanner(System.in);
    //Color de letra a salida por pantalla
    public static final String ANSI_RESET = "\u001B[0m";
    public static final String ANSI_GREEN = "\u001B[32m";
    public static final String ANSI_RED = "\u001B[31m";
    public static final String ANSI_CYAN_BACKGROUND = "\u001B[46m";

    //Insertar Datos a la BD
    static public void insertarRegistro(Connection conexion){
        System.out.println("Inserta la tabla a la que desea añadir registros:");
        String tabla = sc.nextLine();
        String sentenciaSQL = "INSERT INTO " + tabla + " VALUES(?, ?, ?)";
        PreparedStatement sentencia = null;

        try{
            sentencia = conexion.prepareStatement(sentenciaSQL);
            for (int i = 1; i <= 3; i++) {
                System.out.println("Inserte el valor de la columna " + i + " de la tabla:");
                String valor = sc.nextLine();
                sentencia.setString(i, valor);
            }
            if (tabla.equalsIgnoreCase("mejoras")) {
                System.out.println("Inserte el cuarto valor de la tabla:");
                String cuartoValor = sc.nextLine();
                sentencia.setString(4, cuartoValor);
            }
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
//Consultar en la BD  
    static public void consultaBD(Statement st, Connection conexion) throws Exception{
         //Consulta
         conexion.commit();
         System.out.println("Inserta la tabla a consultar:");
         String tabla = sc.nextLine();
         ResultSet rs = st.executeQuery("SELECT * FROM " + tabla);
         int n = 0;
         System.out.println("Mostrando Tabla " + tabla + ":");
         while (rs.next()) {
             System.out.println(ANSI_RED + rs.getString(1) + " " + rs.getString(2) + " " + rs.getString(3) + ANSI_RESET);
             n++;
         }
         rs.close();
    }
//Eliminar registros de la base de datos
    static public void eliminarRegistro(Connection conexion){
        System.out.println("Inserta la tabla de la que desea eliminar registros:");
        String tabla = sc.nextLine();
        if (tabla.equalsIgnoreCase("jokers")) {
            String sentenciaSql = "DELETE FROM " + tabla + " WHERE nombre = ?"; //Aquí es importante incluir el Statement en el if porque hay que buscar por *nombre*, que es una columna de jokers
            PreparedStatement sentencia = null;
            try {
                sentencia = conexion.prepareStatement(sentenciaSql);
                System.out.println("Introduce el nombre del joker a eliminar:");
                String nombre = sc.nextLine();
                sentencia.setString(1, nombre);
                sentencia.executeUpdate();
            } catch (SQLException sqle) {
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
        int eleccion;
        do {    
            System.out.println("Menú Balatro:" + "\n 1. Abrir Sobre (En Desarrollo)" + "\n 2. Consultar Carta/Joker" + "\n 3. Insertar Carta/Joker" + "\n 4. Eliminar Carta/Joker" + "\n 9. Salir");
            eleccion = sc.nextInt();
            sc.nextLine();
            switch (eleccion) {
                case 1:
                    
                    break;
                case 2:
                    consultaBD(st, conexion);
                    break;
                case 3:
                    insertarRegistro(conexion);
                    break;
                case 4:
                    eliminarRegistro(conexion);
                    break;
                case 9: 
                    System.out.println("Saliendo del Programa");
                    break;
                default:
                    break;
            }
        } while (eleccion!=9);
        System.out.println("Gracias por jugar a Balatro!!!");
        conexion.commit();
       
    }
}


    
    