module Complement
  def self.of_dna(string)
    return "" if string.empty?
    string.chars.map { |ch| transcribed_rna_trand[ch] }.join
  end

  private

  def self.transcribed_rna_trand
    {
      "G" => "C",
      "C" => "G",
      "T" => "A",
      "A" => "U",
    }
  end
end
