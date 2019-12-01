require "application_system_test_case"

class PerfilsTest < ApplicationSystemTestCase
  setup do
    @perfil = perfils(:one)
  end

  test "visiting the index" do
    visit perfils_url
    assert_selector "h1", text: "Perfils"
  end

  test "creating a Perfil" do
    visit perfils_url
    click_on "New Perfil"

    fill_in "Altura", with: @perfil.altura
    fill_in "Atividade", with: @perfil.atividade
    check "Ativo" if @perfil.ativo
    fill_in "Caloria", with: @perfil.caloria
    fill_in "Idade", with: @perfil.idade
    fill_in "Objetivo", with: @perfil.objetivo
    fill_in "Peso", with: @perfil.peso
    check "Sexo" if @perfil.sexo
    fill_in "User", with: @perfil.user_id
    click_on "Create Perfil"

    assert_text "Perfil was successfully created"
    click_on "Back"
  end

  test "updating a Perfil" do
    visit perfils_url
    click_on "Edit", match: :first

    fill_in "Altura", with: @perfil.altura
    fill_in "Atividade", with: @perfil.atividade
    check "Ativo" if @perfil.ativo
    fill_in "Caloria", with: @perfil.caloria
    fill_in "Idade", with: @perfil.idade
    fill_in "Objetivo", with: @perfil.objetivo
    fill_in "Peso", with: @perfil.peso
    check "Sexo" if @perfil.sexo
    fill_in "User", with: @perfil.user_id
    click_on "Update Perfil"

    assert_text "Perfil was successfully updated"
    click_on "Back"
  end

  test "destroying a Perfil" do
    visit perfils_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Perfil was successfully destroyed"
  end
end
