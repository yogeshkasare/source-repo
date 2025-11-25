public with sharing class OpportunityService {
    public static Decimal calculateTotalAmount(List<Opportunity> opps) {
        Decimal total = 0;
        for (Opportunity opp : opps) {
            total += opp.Amount;
        }
        return total;
    }
}