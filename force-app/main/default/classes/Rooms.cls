public class Rooms extends fflib_SObjectDomain{
    public Rooms(List<Room__c> sObjectList) {
        super(sObjectList);
    }
    
    public class Constructor implements fflib_SObjectDomain.IConstructable {
        public fflib_SObjectDomain construct(List<SObject> sObjectList) {
            return new Rooms(sObjectList);
        }
    }
    public override void onBeforeInsert() {
        // Apply On insert to Room__c
        for(Room__c room : (List<Room__c>) Records) {
            room.Occupied__c = room.Guest__c != null ? true:false;               
        }
	}
     public override void onBeforeUpdate(Map<Id,SObject> existingRecords) {
        // Apply defaults to Room__c
        for(Room__c room : (List<Room__c>) Records) {
            Room__c newRoom = (Room__c)existingRecords.get(room.id);
            if(room.Guest__c  != newRoom.Guest__c)
            room.Occupied__c = room.Guest__c != null ? true:false;               
        }
	}
}