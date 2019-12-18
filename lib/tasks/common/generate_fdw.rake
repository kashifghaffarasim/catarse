namespace :common do
  desc 'generate common tables fdw'
  
  task generate_fdw: :environment do
    
    if CatarseSettings[:generate_fdw_task_runned] == true
      puts 'generate_fdw already runned'
    else
 
      # todo: when upgrade to 9.5+ can use this
      #IMPORT FOREIGN SCHEMA payment_service
      #  LIMIT TO (subscriptions, catalog_payments, payment_status_transitions, subscription_status_transitions)
      #  FROM SERVER common_db
      #  INTO common_schema;
    end
    
  end
end
