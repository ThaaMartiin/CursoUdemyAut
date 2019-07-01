Quando("eu uso um script") do
   visit '/outros/scroll'
   page.execute_script('window.scrollBy(0,550)')
   sleep(5)
end