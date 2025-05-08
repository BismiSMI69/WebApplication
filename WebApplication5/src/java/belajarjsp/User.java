/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package belajarjsp;

/**
 *
 * @author Bismi
 */
public class User {

    /**
     * @param args the command line arguments
     */
        
    public String namaDepan;
    public String namaBelakang;
    public String jenisKelamin;
    
    public User(String namaDepan, String namaBelakang, String jenisKelamin) {
        this.namaDepan = namaDepan;
        this.namaBelakang = namaBelakang;
        this.jenisKelamin = jenisKelamin;
    }
    
    public String namaLengkap() {
        return this.namaDepan+" "+this.namaBelakang;
    }
}
