public with sharing class AccountListController {

public list<account> accList{get;set;}
public map<string,list<Accountwrapper>> accMap{get;set;}
public string naame{get;set;}

    public AccountListController(){
        accList = new list<account>();
        accList = [select id, name,industry,phone,accountNumber from account limit 5];
        list<Accountwrapper> wrapList = new list<Accountwrapper>();
        for(account ac : accList){
          wrapList.add(new Accountwrapper(ac));
        }
        accMap = new map<string,list<Accountwrapper>>();
        for(account ac : accList ){
            accMap.put(ac.name,wrapList );
        } 
    }
    
    public class Accountwrapper{
      public account ac{get;set;}
      public Accountwrapper(account ac){
         this.ac = new account();
         this.ac = ac;
      }
    }
    
    
    public pageReference dispName(){
      naame='dfdfdffffdf';
       return new pageReference('/home/home.jsp');
    }
    
    public pageReference submitt(){
       system.debug('mmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm');
      return new pageReference('/home/home.jsp');
    }
}