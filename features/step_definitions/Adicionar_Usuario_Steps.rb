Dado(/^que esteja na tela de cadastro$/) do
  visit'http://opensource.demo.orangehrmlive.com/'
  fill_in('txtUsername', :with => 'admin')
  fill_in('txtPassword', :with => 'admin')
  click_button('btnLogin')
end

Quando(/^adicionar um novo Usuario$/) do
  click_on('menu_pim_viewPimModule')
  #click_link('/index.php/pim/addEmployee')
  find(:xpath, '//*[contains(text(), "Add Employee")]').click
  fill_in('firstName', :with => 'Maria')
  fill_in('lastName', :with => 'Eduarda')
  click_button('btnSave')

end

Entao(/^o mesmo deve ser apresentado na tela$/) do
  assert_text('Maria')
end