public with sharing class RoomService {
    public static void CheckIn(String roomId, String contactId){
        service().checkIn(roomId, contactId);
    }
    public static void checkOut(String roomId, String contactId){
        service().checkOut(roomId, contactId);
    }
    private static IRoomService service(){
        return new RoomServiceImpl();
    }
}