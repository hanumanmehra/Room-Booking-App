trigger RoomTrgr on Room__c (
  after delete, after insert, after update, after undelete, before delete, before insert, before update) {
   // Creates Domain class instance and calls appropriate methods
   fflib_SObjectDomain.triggerHandler(Rooms.class);
}
/*trigger RoomTrgr on Room__c (before insert,before update) {
    if(trigger.isbefore && (Trigger.isinsert || trigger.isUpdate)){
        Rooms.roomhandler(trigger.new);
    }

}
*/