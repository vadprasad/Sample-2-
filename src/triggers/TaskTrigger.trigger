trigger TaskTrigger on Task (After Insert, After Update, After Delete) {
   
   if(trigger.isAfter){
       TaskTiggerHandlerCls.insertUpdateNew(trigger.new,Trigger.old,Trigger.isInsert,Trigger.isUpdate,Trigger.isDelete);
   }
  /* if(trigger.isBefore){
     TaskTiggerHandlerCls.beforeMethod(trigger.new,Trigger.old);
   } */
}