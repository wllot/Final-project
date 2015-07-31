def quiz_grade(ans1, ans2, ans3, ans4, ans5, ans6, ans7, ans8, ans9, ans10, ans11)
  interest_array = [0,0,0,0,0]
  if ans1 == "Education"
    interest_array[0] += 5
  elsif ans1 == "Children"
    interest_array[1] += 5
  elsif ans1 == "Animals"
    interest_array[2] += 5
  elsif ans1 == "Poor"
    interest_array[3] += 5
  elsif ans1 == "Enviroment"
    interest_array[4] += 5
  end
  
  if ans2 == "Yes"
    interest_array[2] += 2
    interest_array[3] += 2
    interest_array[4] += 2
  elsif ans2 == "No"
    interest_array[0] += 1
    interest_array[1] += 1
  end
  
   if ans3 == "Yes"
    interest_array[0] += 2
    interest_array[1] += 2
  elsif ans3 == "No"
    interest_array[2] += 1
    interest_array[3] += 1
    interest_array[4] += 1
  end
  
   if ans4 == "Yes"
    interest_array[2] += 2
    interest_array[3] += 2
    interest_array[4] += 2
  elsif ans4 == "No"
    interest_array[0] += 1
    interest_array[1] += 1
  end
  
   if ans5 == "Yes"
    interest_array[0] += 2
  elsif ans5 == "No"
    interest_array[1] += 1
    interest_array[2] += 1
    interest_array[3] += 1
    interest_array[4] += 1
  end
  
   if ans6 == "Yes"
    interest_array[2] += -500
  end
  
   if ans7 == "Yes"
    interest_array[2] += 2
  end
  
   if ans8 == "Yes"
    interest_array[1] += 4
  end
  
   if ans9 == "Yes"
    interest_array[2] += 1
    interest_array[4] += 2
  elsif ans9 == "No"
    interest_array[0] += 1
    interest_array[1] += 1
    interest_array[2] += 1
    interest_array[3] += 1
  end
  
   if ans10 == "Yes"
    interest_array[0] += 1
    interest_array[1] += 2
    interest_array[3] += 2
  elsif ans10 == "No"
    interest_array[2] += 1
    interest_array[4] += 1
  end
  
  if ans11 == "with_others"
    interest_array[0] += 2
    interest_array[1] += 2
    interest_array[3] += 1
  elsif ans11 == "Alone"
    interest_array[2] += 2
    interest_array[4] += 2
  end
  return interest_array
end


# quiz_grade(params["interest"], params["manual_labor"], params["age_diff"], params["people_person"], params["teaching"], params["animal_fear"], params["own_pet"], params["have_children"], params["working_outside"], params["helping_people"], params["working_alone"])
  