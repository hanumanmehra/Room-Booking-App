public class RoomSelector extends fflib_SObjectSelector implements IRoomSelector{
    public List<Schema.SObjectField> getSObjectFieldList() {
        return new List<Schema.SObjectField> {
            Room__c.Occupied__c,
            Room__c.Id,
            Room__c.Guest__c,
            Room__c.Name };
    }
    public Schema.SObjectType getSObjectType() {
        return Room__c.sObjectType;
    }
    public List<Room__c> selectByRoomId(Set<ID> idSet) {
        System.debug('Test'+(List<Room__c>) selectSObjectsById(idSet));
        return (List<Room__c>) selectSObjectsById(idSet);
    }
}