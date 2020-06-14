module  RecordsHelper

  # Get pair date from params or use today date
  def pair_date_string_from(params)
    if params[:pair_date]
      params[:pair_date]
    else
      Date.today.strftime("%F")
    end
  end

  # Get pair date from params or use today date
  def pair_date_from(params)
    if params.has_key?(:pair_date)
      pair_date = params[:pair_date].to_date
    else
      pair_date = Date.today
    end
    return pair_date
  end

  # Localized string from date
  def localized_string_from(date)
    return l(date, format: '%A, %e %B')
  end

end