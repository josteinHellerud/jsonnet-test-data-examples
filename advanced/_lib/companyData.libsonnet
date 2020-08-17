local companies = [
  "The red company",
  "Amber inc",
  "Achivement org",
  "The green way",
  "Teal living"
];

local companyEmails = [
  "theredcompany.com",
  "amber.com",
  "achivement.org",
  "tgw.com",
  "tealliving.com"
];

local generateCompanyNameFromIndex = (function(companyIndex)
  companies[companyIndex]
);

local generateCompanyEmailFromIndex = (function(companyIndex)
  companyEmails[companyIndex]
);

local accessRights = [
  "super user",
  "admin",
  "write",
  "read"
];

local generateAccessRights = (function(number)
  if std.mod(number, 200) < 1 then accessRights[0] else 
  if std.mod(number, 10) < 2  then accessRights[1] else
  if std.mod(number, 10) < 6 then accessRights[2] else
  accessRights[3]
);

{
  generateCompanyNameFromIndex(companyIndex)::
    generateCompanyNameFromIndex(companyIndex),

  generateCompanyEmailFromIndex(companyIndex)::
    generateCompanyEmailFromIndex(companyIndex),

  generateAccessRights(number)::
    generateAccessRights(number),

  companiesLength()::
    std.length(companies),
}