import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Scanner;


public class Juego {
    static Scanner sc = new Scanner(System.in);
    //Color de letra a salida por pantalla
    public static final String ANSI_RESET = "\u001B[0m";
    public static final String ANSI_GREEN = "\u001B[32m";
    public static final String ANSI_RED = "\u001B[31m";
    public static final String ANSI_CYAN_BACKGROUND = "\u001B[46m";

        public static int generarNº(){
            return (int) (Math.random()*68+1);   
        }

        public static void generarJoker(Connection conexion, Statement st, int i, ArrayList<Integer> al){
            try {
                for (int ind = 1; ind <= i; ind++) {
                    int generate = generarNº();
                    for (Integer num : al) {
                        if (generate==num) {
                            i-=1;
                        }else{
                            al.add(generate);
                            String sql = "SELECT * FROM jokers WHERE id = ?";
                            PreparedStatement ps = conexion.prepareStatement(sql);
                            ps.setInt(1, generate);
                            ResultSet rs = ps.executeQuery();

                            while (rs.next()) {
                                System.out.println("Carta " + ind + ": " + rs.getInt(1) + " " + rs.getString(2) + " " + rs.getString(3) + " " + rs.getInt(4) + "$");
                            }
                        }
                    }
                }

                //Averiguar si es útil
                if (i == 2) {
                    Sobre standard = new Sobre("Standard", al.get(1), al.get(2));
                }else if (i == 4) {
                    Sobre jumbo = new Sobre("Standard", al.get(1), al.get(2), al.get(3), al.get(4));
                }else{
                    Sobre mega = new Sobre("Standard", al.get(1), al.get(2), al.get(3), al.get(4), al.get(5));
                }


            } catch (Exception e) {
                // TODO: handle exception
                System.out.println("Error en la generación de Jokers");
            }
        }

        public static void generar_joker_sobre(Connection conexion, Statement st){
            System.out.println("Elige el nº del tipo de sobre a abrir: \n 1- Standard (2) \n 2- Jumbo (4) \n 3- Mega (5)");
            int eleccion = sc.nextInt();
            ArrayList<Integer> al = new ArrayList<>();
            switch (eleccion) {
                case 1:
                    System.out.println("Abriendo Sobre Standard:");
                    generarJoker(conexion, st, eleccion, al);                       
                    break;
                case 2:

                    break;
                case 3:

                    break;
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
            System.out.println("Menú Balatro:" + "\n 1. Abrir Sobre (En Desarrollo)" + "\n 2. Consultar Carta/Joker" + "\n 3. Insertar Carta/Joker" + "\n 4. Eliminar Carta/Joker" + "\n 5. Modificar Registro" + "\n 9. Salir");
            eleccion = sc.nextInt();
            sc.nextLine();
            switch (eleccion) {
                case 1:
                    generar_joker_sobre(conexion, st);
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


    
    