module UserRepresentations
  include AsJsonRepresentations

  representation :basic do
    {
      id: id,
      name: name,
      surname: surname
    }
  end
end
