/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Model.Eaters;
import Model.Member;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Random;

/**
 *
 * @author Jonathan
 */
public class MemberDAO {

    private Connection connection;
    Connection conn = Koneksi.koneksi.open();
    ResultSet result;

    public MemberDAO() {
    }

    public void addEaters(Member member) throws Exception {
        String sql = "insert into member (idMember, userName, password, tipe, Status)"
                + "values('" + gen() + "','" + member.getUserName() + "','" + member.getPassword() + "','EATERS','Aktif')";
        Statement stat = conn.createStatement();
        stat.executeUpdate(sql);
        conn.close();
    }

    public static String gen() {
        Random r = new Random(System.currentTimeMillis());
        return "E" + String.valueOf((1 + r.nextInt(2)) * 10000 + r.nextInt(10000));
    }
}
