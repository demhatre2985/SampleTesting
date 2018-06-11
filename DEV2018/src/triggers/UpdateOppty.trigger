trigger UpdateOppty on Opportunity (before Update) {

        for(Opportunity o1 : Trigger.New)
        {
            if(o1.Type == 'Existing Customer - Upgrade')
                {
                	System.debug('Hello2');
                o1.TotalOpportunityQuantity=100;
                update o1;
                }
        }

}