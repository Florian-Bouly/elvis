class ChangePricingToPricingCategoryInDesiredActivities < ActiveRecord::Migration[6.1]
    def up
      add_column :desired_activities, :pricing_category_id, :bigint
      execute("UPDATE desired_activities SET pricing_category_id = pricings.id FROM pricings WHERE pricings.id = desired_activities.pricing_id") if Object.const_defined?(:Pricing)
      add_foreign_key :desired_activities, :pricing_categories, column: :pricing_category_id, on_delete: :restrict
      remove_foreign_key :desired_activities, column: :pricing_id if foreign_key_exists?(:desired_activities, :pricings)
      remove_column :desired_activities, :pricing_id
    end

    def down
      add_column :desired_activities, :pricing_id, :bigint
      execute("UPDATE desired_activities SET pricing_id = pricings.id FROM pricings WHERE pricings.id = desired_activities.pricing_category_id") if Object.const_defined?(:Pricing)
      add_foreign_key :desired_activities, :pricings, column: :pricing_id, on_delete: :restrict
      remove_foreign_key :desired_activities, column: :pricing_category_id if foreign_key_exists?(:desired_activities, :pricing_categories)
      remove_column :desired_activities, :pricing_category_id
    end

end
