public with sharing class AccountController {
	//Prasath first awesome commit

    public Account account { get; set; }
    
    public AccountController(){
      account = new Account();
      
     // account = (account)controller.getRecord();
      account = [select id, name, accountNumber , Industry, Type from account 
                    where id =: Apexpages.currentpage().getparameters().get('ccon')];
    }
}