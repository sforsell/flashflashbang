def current_round
  Round.find_by(id: session[:round_id])
end