trigger AccountTrigger on Account (before insert , after update) {


if( Trigger.isAfter){


if(Trigger.isUpdate){


    AccountHandler.isAfterupdate(Trigger.new);

}

}

}