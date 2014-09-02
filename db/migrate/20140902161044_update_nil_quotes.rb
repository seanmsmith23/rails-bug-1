class UpdateNilQuotes < ActiveRecord::Migration
  def change
    Quote.find_each do |quote|
      if quote.created_at == nil
        quote.created_at = Time.now
        quote.save
      end
    end
  end
end
