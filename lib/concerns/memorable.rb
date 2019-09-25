module Memorable
  def reset_all
    # @@songs.clear if @@songs
    self.all.clear
  end

  def count
    self.all.count
  end
end
