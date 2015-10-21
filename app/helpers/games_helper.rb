module GamesHelper

  def render_piece(piece)
    return '' if piece.nil?
    piece_codes_black={
      "Pawn" => "&#9823;",
      "Knight" => "&#9822;",
      "Bishop" => "&#9821;",
      "Rook" => "&#9820;",
      "Queen" => "&#9819;",
      "King" => "&#9818;"
    }

    piece_codes_white={
      "Pawn" => "&#9817;",
      "Knight" => "&#9816;",
      "Bishop" => "&#9815;",
      "Rook" => "&#9814;",
      "Queen" => "&#9813;",
      "King" => "&#9812;"
    }


    correct_hash = nil
    
    if(piece.black?)
      correct_hash=piece_codes_black
    else
      correct_hash=piece_codes_white
    end

    return correct_hash[piece.type].html_safe


  end

end
