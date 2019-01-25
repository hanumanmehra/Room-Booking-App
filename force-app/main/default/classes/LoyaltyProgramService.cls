public class LoyaltyProgramService {
     public static Boolean isThisContactPartOfLoyaltyProgram(Id contactId){
        Return service().isThisContactPartOfLoyaltyProgram(contactId);
    }
    public static ILoyaltyProgramService service(){
        return new LoyaltyProgramServiceImpl();
    }
}