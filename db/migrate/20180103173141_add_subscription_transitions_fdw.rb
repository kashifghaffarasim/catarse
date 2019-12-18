class AddSubscriptionTransitionsFdw < ActiveRecord::Migration
  def change
    # need this to fool circleci into thinking the table is local
    if Rails.env.test?
      execute <<-SQL
      CREATE TABLE common_schema.subscription_status_transitions (
        id uuid  NOT NULL,
        subscription_id uuid NOT NULL,
        from_status payment_service.subscription_status NOT NULL,
        to_status payment_service.subscription_status NOT NULL,
        data jsonb DEFAULT '{}'::jsonb NOT NULL,
        created_at timestamp without time zone DEFAULT now() NOT NULL,
        updated_at timestamp without time zone DEFAULT now() NOT NULL
      );
    SQL
    else
     
    end
  end
end
