import java.util.HashMap;

/**
 * Sobre
 */
public class Sobre {
    private String tamaño;
    private int carta1;
    private int carta2;
    private int carta3;
    private int carta4;
    private int carta5;

    public Sobre(String tamaño, int carta1, int carta2) {
        this.tamaño = tamaño;
        this.carta1 = carta1;
        this.carta2 = carta2;
    }

    public Sobre(String tamaño, int carta1, int carta2, int carta3, int carta4) {
        this.tamaño = tamaño;
        this.carta1 = carta1;
        this.carta2 = carta2;
        this.carta3 = carta3;
        this.carta4 = carta4;
    }

    public Sobre(String tamaño, int carta1, int carta2, int carta3, int carta4, int carta5) {
        this.tamaño = tamaño;
        this.carta1 = carta1;
        this.carta2 = carta2;
        this.carta3 = carta3;
        this.carta4 = carta4;
        this.carta5 = carta5;
    }

    public String getTamaño() {
        return tamaño;
    }

    public void setTamaño(String tamaño) {
        this.tamaño = tamaño;
    }

    public int getCarta1() {
        return carta1;
    }

    public void setCarta1(int carta1) {
        this.carta1 = carta1;
    }

    public int getCarta2() {
        return carta2;
    }

    public void setCarta2(int carta2) {
        this.carta2 = carta2;
    }

    public int getCarta3() {
        return carta3;
    }

    public void setCarta3(int carta3) {
        this.carta3 = carta3;
    }

    public int getCarta4() {
        return carta4;
    }

    public void setCarta4(int carta4) {
        this.carta4 = carta4;
    }

    public int getCarta5() {
        return carta5;
    }

    public void setCarta5(int carta5) {
        this.carta5 = carta5;
    }

    
    
}