Dado(/^que esteja na tela de Edição$/) do
  visit'http://opensource.demo.orangehrmlive.com/'
  fill_in('txtUsername', :with => 'admin')
  fill_in('txtPassword', :with => 'admin')
  click_button('btnLogin')
end

Quando(/^seleciono o Usuario$/) do
  click_on('menu_pim_viewPimModule')
  find(:xpath, '//*[contains(text(), "Employee List")]').click
  find(:xpath, '//*[contains(text(), "0007")]').click
end

Quando(/^Edito o Usuario$/) do
  click_button('Edit')
  fill_in('personal_txtEmpMiddleName', :with => 'Emanuella')
  click_button('Save')
end

Entao(/^o mesmo deve estar alterado$/) do
  assert_text('Successfully Saved')
end