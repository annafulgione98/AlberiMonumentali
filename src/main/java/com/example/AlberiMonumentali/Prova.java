package com.example.AlberiMonumentali;

import com.example.AlberiMonumentali.bean.AlberiMonumentaliBean;
import com.example.AlberiMonumentali.operdb.Operation;
import org.bson.types.ObjectId;

import java.util.ArrayList;

public class Prova {
    public static void main(String[] arg) {
        System.out.println("CIAOO SONO IL MAIN");
        Operation operazioni= new Operation();
        ArrayList<AlberiMonumentaliBean> arrayAlberi= new ArrayList<AlberiMonumentaliBean>();
        arrayAlberi= operazioni.retrieve();

       // operazioni.insert( "prova", "salerno", "salerno", 1.11, "prova", "prova", 1.11, "prova", "prova", "prova");
        ObjectId objId = new ObjectId("60bc8cf29d149a2ef021cb0b");
        operazioni.update(objId, 9.99);

       // operazioni.remove("60bc8cf29d149a2ef021cb0b");

     /*   for (int i=0;i<arrayAlberi.size();i++){
                System.out.println(arrayAlberi.get(i).getId() +", "+arrayAlberi.get(i).getName() +", "+arrayAlberi.get(i).getNomevolgare());

        }*/

        boolean flag= operazioni.getUser("claudiabuono99@gmail.com", "claudiabuono");

        if(flag) System.out.println("utente presente");
        else System.out.println("utente assente");
    }
}
