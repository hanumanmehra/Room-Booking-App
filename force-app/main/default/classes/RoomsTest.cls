@Istest
public class RoomsTest {
    @Istest
    static void RoomTest(){
       // Create a Unit Of Work
       fflib_SObjectUnitOfWork uow = new fflib_SObjectUnitOfWork(
            new Schema.SObjectType[] {
                Account.SObjectType,
                Contact.SObjectType,
                room__c.SObjectType
                    }
        );
       Account acc= new Account();
       acc.Name ='Test Account';
       uow.registerNew(acc); 
       // Commit the work to the database!
      
        
       System.assertnotEquals(null,acc);
       Contact con = new Contact(LastName='Test Contact');
       Contact con2 = new Contact(LastName='Contact2');
      
       //uow.registerRelationship(con, con.AccountId, acc)
       uow.registerNew(con, Contact.AccountId, acc);
       uow.registerNew(con2, Contact.AccountId, acc);
       // Commit the work to the database!
      
       System.assertnotEquals(null,con);
       Room__c room = new Room__c ();
       room.Name = 'RM01';
       room.Guest__c = con.id ;
      
       Room__c room2 = new Room__c ();
       room2.Name = 'RM02';
       //room2.Guest__c = con2.id ;
      
      uow.registerNew(room, Room__c.Guest__c, con);
      uow.registerNew(room2);
      // Commit the work to the database!
      uow.commitWork();
      room2.Guest__c = con2.id ;
      uow.registerDirty(room2, Room__c.Guest__c, con2);
      //uow.commitWork();
    }

}