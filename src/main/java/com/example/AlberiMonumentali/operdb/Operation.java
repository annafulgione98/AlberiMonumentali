package com.example.AlberiMonumentali.operdb;
import java.util.ArrayList;
import java.util.Iterator;

import com.example.AlberiMonumentali.bean.AlberiMonumentaliBean;
import com.example.AlberiMonumentali.bean.UserBean;
import com.mongodb.client.FindIterable;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.model.Filters;
import com.mongodb.client.model.Updates;
import connector.MyCollection;
import connector.MyCollectionUser;
import org.bson.Document;



public class Operation {
    public boolean getUser(String myusername, String password){
        MyCollectionUser sc = new MyCollectionUser();
        MongoCollection<Document> collection= sc.getMyCollection();

        //ritorna oggetto iterabile - { "username":{ $eq: myusername }  }
        FindIterable<Document> iterDoc= collection.find();
        int i=1;

        //ritorna iteratore
        Iterator it = iterDoc.iterator();
        ArrayList<UserBean> arrayuser= new ArrayList<UserBean>();
        while(it.hasNext()){
            Document document= (Document) it.next();

            UserBean user= new UserBean(document.getString("username"),  document.getString("password"));
            arrayuser.add(user);
            i++;
        }
        Boolean flag= findUser(myusername,password,arrayuser);
        return flag;
    }
    private boolean findUser( String myusername, String password, ArrayList<UserBean> arrayuser){
        for (int i=0;i<arrayuser.size();i++){
            System.out.println(arrayuser.get(i).getUsername());
            if(arrayuser.get(i).getUsername().equals(myusername)){
                if(arrayuser.get(i).getPassword().equals(password)){
                    return true;
                }
            }
        }
        return false;
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




