local userData = import 'userData.libsonnet';
local companyData = import 'companyData.libsonnet';

{
  users: [
    {
      id: companyIndex+''+lastNameIndex+''+firstNameIndex,
      displayName: userData.generateNameFromIndex(firstNameIndex,lastNameIndex),
      firstName: userData.generateFirstNameFromIndex(firstNameIndex),
      lastName: userData.generateLastNameFromIndex(lastNameIndex),
      company: companyData.generateCompanyNameFromIndex(companyIndex),
      accessRights: companyData.generateAccessRights((firstNameIndex+lastNameIndex)*(companyIndex+1)),
      email: std.asciiLower(
        userData.generateFirstNameFromIndex(firstNameIndex)+
        "."+
        userData.generateLastNameFromIndex(lastNameIndex)+
        "@"+
        companyData.generateCompanyEmailFromIndex(companyIndex)),
      lovesToEat: userData.generateLovesToEatFromIndex(firstNameIndex)
    }
    for firstNameIndex in std.range(0, userData.firstNamesLength()-1)
    for lastNameIndex in std.range(0, userData.lastNamesLength()-1)
    for companyIndex in std.range(0, companyData.companiesLength()-1)
  ],
}