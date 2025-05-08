/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package belajarjsp;

import java.util.ArrayList;
import java.util.List;
/**
 *
 * @author Bismi
 */

// class contoh untuk generate daftar siswa
public class Daftar {
    public List<Siswa> getList() {
        List<Siswa> list = new ArrayList<>();

        list.add(new Siswa("111", "Budi"));
        list.add(new Siswa("222", "Yuda"));
        list.add(new Siswa("333", "Dyah"));

        return list;
    }
}
