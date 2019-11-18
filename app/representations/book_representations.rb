module BookRepresentations
  include AsJsonRepresentations

  representation :basic do
    {
      name: name,
      year: year
    }
  end

  representation :advanced, extend: :basic do
    {
      editorial: editorial
    }
  end
end