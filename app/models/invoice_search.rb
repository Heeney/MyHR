class InvoiceSearch
  attr_reader :date_from, :date_to #Setters and Getters
  
  def initialize(params)
    params ||={} 
    @date_from = parsed_date(params[:date_from], 7.days.ago.to_date.to_s) #Instance variables
    @date_to = parsed_date(params[:date_to], Date.today.to_s) #built in date class , auto calls date for today and converts to string
  end
  
  def scope # Search between date A and date B # Also protects from SQL attacks.
    Invoice.where('date BETWEEN ? AND ?', @date_from, @date_to)
  end
  
  private # nothing else can call this controller
  
  def parsed_date(date_string, default)
    Date.parse(date_string)
  rescue ArgumentError, TypeError # Help out to find what issue - user typing issues.eg date instead of sentence
    default
  end
end
