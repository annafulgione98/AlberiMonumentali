package com.example.AlberiMonumentali;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.logging.Level;

import com.google.gson.Gson;
import com.mongodb.client.FindIterable;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.model.Filters;
import com.mongodb.client.model.Updates;
import connector.MyCollection;
import connector.MyCollectionUser;
import org.bson.Document;



public class Operation {
    public boolean cercaUser(String username, String password){
        MyCollectionUser sc = new MyCollectionUser();
        MongoCollection<Document> collection= sc.getMyCollection();

        return true;
    }

    //per inserire valori FUNZIONA
    public void insert(String myfid, String myName, String myProvincia, String myLocalita, Double myAltitudine, String myNomeScientifico, String myNomevolgare, Double myAltezza, String mySchede, String mylat, String mylng){

        MyCollection sc = new MyCollection();
        MongoCollection<Document> collection= sc.getMyCollection();
        Document document = new Document("title","MongoDB")
                .append("Fid", myfid)
                .append("NAME", myName)
                .append("PROVINCIA", myProvincia)
                .append("LOCALITA", myLocalita)
                .append("ALTITUDINE", myAltitudine)
                .append("NOME_SCIENTIFICO", myNomeScientifico)
                .append("NOME_VOLGARE", myNomevolgare)
                .append("ALTEZZA", myAltezza)
                .append("SCHEDA", mySchede)
                .append("LATITUDINE", mylat)
                .append("LONGITUDINE", mylng);
        collection.insertOne(document);
        System.out.println("Documento inserito con successo");
    }

    //per ritornate tutti i valori FUNZIONA
    public ArrayList<AlberiMonumentaliBean> retrieve(){
        MyCollection sc = new MyCollection();
        MongoCollection<Document> collection= sc.getMyCollection();

        //ritorna oggetto iterabile
        FindIterable<Document> iterDoc= collection.find();
        int i=1;

        //ritorna iteratore
        Iterator it = iterDoc.iterator();
        ArrayList<AlberiMonumentaliBean> arrayAlberi= new ArrayList<AlberiMonumentaliBean>();
        while(it.hasNext()){
            org.bson.Document document= (org.bson.Document) it.next();

            AlberiMonumentaliBean albero= new AlberiMonumentaliBean(document.getString("Fid"),document.getString("NAME"), document.getString("PROVINCIA"), document.getString("LOCALITA"), document.getDouble("ALTITUDINE"), document.getString("NOME_SCIENTIFICO"), document.getString("NOME_VOLGARE"), document.getDouble("ALTEZZA"), document.getString("SCHEDA"),document.getString("LATITUDINE"),document.getString("LONGITUDINE"));
            arrayAlberi.add(albero);
            i++;
        }
       return arrayAlberi;
    }
    //per modificare altezza FUNZIONA
    public void update(String myFid, Double myAltezza){
        MyCollection sc = new MyCollection();
        MongoCollection<Document> collection= sc.getMyCollection();

        collection.updateOne(Filters.eq("Fid", myFid), Updates.set("ALTEZZA", myAltezza));
        System.out.println("Altezza modificata con successo");

    }

    //cancellare documento FUNZIONA
    public void remove(String myFid){
        MyCollection sc = new MyCollection();
        MongoCollection<Document> collection= sc.getMyCollection();

        collection.deleteOne(Filters.eq("Fid", myFid));
        System.out.println("Documento cancellato con successo");
    }
}





