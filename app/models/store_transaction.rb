class StoreTransaction < ApplicationRecord
    belongs_to :store
    has_many :daily_reports
    has_many :weekly_reports
    has_many :monthly_reports
    has_many :csv_transaction_details

end
