@isTest
private class OpportunityServiceTest {
    @isTest
    static void testCalculateTotalAmount() {
        List<Opportunity> opps = new List<Opportunity>{
            new Opportunity(Name='Opp1', StageName='Prospecting', CloseDate=Date.today(), Amount=1000),
            new Opportunity(Name='Opp2', StageName='Prospecting', CloseDate=Date.today(), Amount=2000)
        };
        insert opps;

        Decimal total = OpportunityService.calculateTotalAmount(opps);
        System.assertEquals(3000, total);
    }
}