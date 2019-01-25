public interface IRoomSelector extends fflib_ISObjectSelector{
    List<Room__c> selectByRoomId(Set<ID> idSet);
}