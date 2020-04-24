class AddOrganizationIdToGroups < ActiveRecord::Migration[6.0]
  def change
    organization = Organization.create(name: "Montreal Chinese Alliance Church", slug: "mcac")
    add_reference :groups, :organization, null: false, foreign_key: true, default: organization.id
  end
end
