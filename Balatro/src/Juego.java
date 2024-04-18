import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Scanner;


public class Juego {
    static Scanner sc = new Scanner(System.in);
    //Color de letra a salida por pantalla
    public static final String ANSI_RESET = "\u001B[0m";
    public static final String ANSI_GREEN = "\u001B[32m";
    public static final String ANSI_RED = "\u001B[31m";
    public static final String ANSI_CYAN_BACKGROUND = "\u001B[46m";

        public static void generar_joker_sobre(Connection conexion, Statement st){
            
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
            System.out.println("Menú Balatro:" + "\n 1. Abrir Sobre (En Desarrollo)" + "\n 2. Consultar Carta/Joker" + "\n 3. Insertar Carta/Joker" + "\n 4. Eliminar Carta/Joker" + "\n 5. Modificar Registro" + "\n 9. Salir");
            eleccion = sc.nextInt();
            sc.nextLine();
            switch (eleccion) {
                case 1:
                    
                    break;
                case 2:
                    
                    break;
                case 3:
                    
                    break;
                case 4:
                    
                    break;
                case 5:
                
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


    
    