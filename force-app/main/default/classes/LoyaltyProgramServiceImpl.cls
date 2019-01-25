public class LoyaltyProgramServiceImpl implements ILoyaltyProgramService{
	 public Boolean isThisContactPartOfLoyaltyProgram( Id contactId ){
        if(contactId != null){
          registerCheckInForContact(contactId); 
          return true;
        }
        return false;
    }
    public void registerCheckInForContact( id contactId ){
        //Code for registercheckInForContact
    }
}