/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package belajarjsp;

/**
 *
 * @author Bismi
 */

public class Siswa {
    // untuk bisa diakses JSTL, setiap properti harus memiliki fungsi getter
    // supaya ia bisa dibaca
    // harus memiliki fungsi setter, jika diijinkan bisa dirubah
    private String nip;
    private String nama;
    
    public Siswa(String nip, String nama) {
        this.nip = nip;
        this.nama = nama;
    }

    // fungsi getter nip
    public String getNip() {
        return nip;
    }

    // fungsi getter nama
    public String getNama() {
        return nama;
    }
    
    // fungsi setter nip
    public void setNip(String nip) {
        this.nip = nip;
    }

    // fungsi setter nama
    public void setNama(String nama) {
        this.nama = nama;
    }
}
